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
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 8),
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(), // 彈性滾動效果
        itemCount: AlbumLists.listCount + 1, // 加1來包含PlayerCardSection
        itemBuilder: (buildContext, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: PlayerCardSection(),
            );
          }
          final albumIndex = index - 1; // 調整索引以匹配專輯列表
          final title = AlbumLists.listTitles[albumIndex];
          final albums = AlbumLists.getItems(albumIndex);

          return Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: AlbumRowSection(title: title, albums: albums),
          );
        },
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
        crossAxisAlignment: isArtist ? CrossAxisAlignment.center : CrossAxisAlignment.start, // type: album 時水平置中對齊
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
          ..._buildAlbumDetails(),
        ],
      ),
    );
  }

  List<Widget> _buildAlbumDetails() {
    return [
      if (widget.album.moduleType?.isNotEmpty ?? false)
        Text(
          widget.album.moduleType!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      if (widget.album.name?.isNotEmpty ?? false)
        Text(
          widget.album.name!,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      if (widget.album.artistName?.isNotEmpty ?? false)
        Text(
          widget.album.artistName!,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        ),
      if (widget.album.additionalType?.isNotEmpty ?? false)
        Text(
          widget.album.additionalType!,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
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
        SizedBox(
          height: 250, // Adjust height as needed
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(), // 彈性滾動效果
            itemCount: albums.length,
            itemBuilder: (buildContxt, index) {
              final album = albums[index];
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: AlbumRowTile(album: album.$1, type: album.$2),
              );
            },
          ),
        ),
      ],
    );
  }
}
