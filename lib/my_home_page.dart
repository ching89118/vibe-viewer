import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'components/app_bar/user_app_bar.dart';
import 'components/card/player_card_section.dart';
import 'services/spotify_service.dart';
import 'models/album_model.dart';
import 'data/album_list.dart'; // 匯入多個列表

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.black,
        title: const UserAppBar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              PlayerCardSection(),
              const SizedBox(height: 8),
              AlbumRowSection(title: '重溫經典', albums: classicAlbums),
              const SizedBox(height: 8),
              AlbumRowSection(title: '電台推薦', albums: podcastRecommandation),
              const SizedBox(height: 8),
              AlbumRowSection(title: '這些專輯有你的愛歌', albums: yourFavorites),
              const SizedBox(height: 8),
              AlbumRowSection(title: '熱門電台', albums: hitRadio),
              const SizedBox(height: 8),
              AlbumRowSection(title: '無論晴天雨天，音樂一直在', albums: noMatterWeather),
              const SizedBox(height: 8),
              AlbumRowSection(title: '為你挑選的最新發行音樂', albums: popMusic),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}

class AlbumRowTile extends StatefulWidget {
  final String type;
  final Album album;

  const AlbumRowTile({required this.album, required this.type, super.key});

  @override
  State<AlbumRowTile> createState() => _AlbumRowTileState();
}

class _AlbumRowTileState extends State<AlbumRowTile> {
  String? imageUrl;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchAlbumImage();
  }

  Future<void> _fetchAlbumImage() async {
    try {
      final clientId = dotenv.env['CLIENT_ID'] ?? '';
      final clientSecret = dotenv.env['CLIENT_SECRET'] ?? '';

      final service = SpotifyService(
        clientId: clientId,
        clientSecret: clientSecret,
      );
      final url = await service.fetchSpotifyImageUrl(
        type: widget.type,
        id: widget.album.albumId,
      );

      setState(() {
        imageUrl = url;
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        imageUrl = widget.album.imageUrl;
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // 判斷是否為 artist 或 show
    // artist: 圓形圖片
    // show: 圓角矩形圖片
    final isArtist = widget.type == 'artist';
    final isShow = widget.type == 'show';

    return SizedBox(
      width: 150,
      height: 250, // 設定固定高度
      child: Column(
        mainAxisSize: MainAxisSize.min, // 確保 Column 不會擴展超過需要的空間
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isLoading)
            const SizedBox(
              // 設定 loading indicator 的容器大小
              height: 150,
              width: 150,
              child: Center(child: CircularProgressIndicator()),
            )
          else
            ClipRRect(
              borderRadius: BorderRadius.circular(
                isArtist ? 75 : (isShow ? 8 : 0),
              ),
              child: Image.network(
                imageUrl ??
                    widget.album.imageUrl ??
                    'https://ih1.redbubble.net/image.4905811472.8675/bg,f8f8f8-flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
          const SizedBox(height: 10),
          ..._buildAlbumDetails(false), // 傳入 false 以確保文字左對齊
        ],
      ),
    );
  }

  List<Widget> _buildAlbumDetails(bool isArtist) {
    return [
      if (widget.album.moduleType?.isNotEmpty ?? false)
        Text(
          widget.album.moduleType!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
      if (widget.album.name?.isNotEmpty ?? false)
        Text(
          widget.album.name!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.start,
        ),
      if (widget.album.artistName?.isNotEmpty ?? false)
        Text(
          widget.album.artistName!,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
          textAlign: TextAlign.start,
        ),
      if (widget.album.additionalType?.isNotEmpty ?? false)
        Text(
          widget.album.additionalType!,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
          textAlign: TextAlign.start,
        ),
    ];
  }
}

class AlbumRowSection extends StatelessWidget {
  final String title;
  final List<(Album, String)> albums; // 新增 albums 參數

  const AlbumRowSection({required this.title, required this.albums, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title, // 顯示標題
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 18),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (final (album, type) in albums) ...[
                AlbumRowTile(album: album, type: type),
                const SizedBox(width: 12),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
