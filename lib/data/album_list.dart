import '/models/album_model.dart';

// 第一個列表
final List<(Album, String)> classicAlbums = [
  (Album(albumId: '4XKp9GFAQfsh2NflSRnHQi', name: '孫盛希'), 'artist'),
  (
    Album(
      albumId: '74vamOEacSToHKKvY076mq',
      name: '若你碰到他',
      artistName: '專輯‧蔡健雅',
      imageUrl:
          'https://i.scdn.co/image/ab67616d0000b2735d476803af73bdde7a8d3cef',
    ),
    'album',
  ),
  (
    Album(
      albumId: '2Fztu3DwqASM6X7luZkUT6',
      moduleType: '生活與健康',
      name: 'Chill Palm',
      artistName: '節目‧Chill Palm',
      additionalType: 'Podcasts',
    ),
    'show',
  ),
  (
    Album(
      albumId: '1kLvCJUYjg2xkByYQWvlJi',
      name: '開心的英文歌',
      artistName: '播放清單',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '3u9Nhf0m0jNiHdnEgmM7n8',
      name: '療癒英文情歌',
      artistName: '播放清單',
    ),
    'playlist',
  ),
  (
    Album(albumId: '0wEbinOkDzYtORRfLnaCKL', name: '爵士純音樂', artistName: '播放清單'),
    'playlist',
  ),
  (
    Album(
      albumId: '0t2APM2izcSMyW93BX4HIq',
      name: '大娛樂家電影原聲大碟',
      artistName: '播放清單',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '52GicWv0F0KfoYqxf9D99C',
      name: '冷門小眾的寶藏英文歌...',
      artistName: '播放清單‧當你的品味越小眾\n意味著你欣賞的事物...',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '5fJXjW9On6vPk1f58kMQNP',
      name: ',and',
      artistName: '專輯‧Roy Kim',
    ),
    'album',
  ),
  (
    Album(albumId: '0cTOY5AW7XI8JV6FEAK9ty', name: '台語歌翻唱', artistName: '播放清單'),
    'playlist',
  ),
];

// 第二個列表
final List<(Album, String)> podcastRecommandation = [
  (
    Album(
      albumId: '37i9dQZF1E4B09Wxd5Du09',
      artistName: '有 shy martin, Luz, Etham 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/4K9OTkRXEFL6NDXFTqVmq9/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4EGRyyhStaxy',
      artistName: '有 PARK WON, Kim Feel, Lim Jae Hyun 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/3ErHVJMsxTq2lLSmnONBm9/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4yhsEAGFsMS7',
      artistName: '有 張惠妹, 蔡依林, 田馥甄 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/376pcuw4IgWBMOUwCr8kIm/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4opKNcF2wERR',
      artistName: '有 Ruel, Pink Sweat\$, Zedd 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/5JZ7CnR6gTvEMKX4g70Amv/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '537i9dQZF1E4waUbTuY9ftW',
      artistName: '有 告五人, 陳華, 周興哲 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/0Awqm7GXGiBp8fJNGvywra/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4vCoQXwRw0ak',
      artistName: '有 Anson Seabra, Clinton Kane, LANY 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/3gIRvgZssIb9aiirIg0nI3/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4AfEUiirXPyP',
      artistName: '有 Olivia Rodrigo, Ariana Grande, Katy Perry 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/06HL4z0CvFAxyc27GXpf02/zh-Hant',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4xdD179lgvAc',
      artistName: '有 Beren Olivia, NOTD, Elina 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/7eCmccnRwPmRnWPw61x6jM/zh-Hant',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4kjmK5IpjvuK',
      artistName: '有 Hye Seung Nam, JKM1, YEOM SEUNG JAE 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/5D1g6LDYxTU0pSVX8Vtm1h/zh-Hant',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4wmDqtSykixY',
      artistName: '有 321Jazz, UNRJ, Evelyn Blue 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/6pSlmrhsHiZ56xQ01JpyKa/zh-Hant',
    ),

    'playlist',
  ),
];

// 第三個列表
final List<(Album, String)> yourFavorites = [
  (
    Album(
      albumId: '1yaDEDojbdqDCeOspFEieV',
      name: 'Happy About Everyth...',
      artistName: '專輯‧Fly By Midnight',
    ),
    'album',
  ),
  (
    Album(
      albumId: '3NVHzEmbCyIfyErbNROeAz',
      name: 'シフクノオト',
      artistName: '專輯‧Mr.Children',
    ),
    'album',
  ),
];

// 第四個列表
final List<(Album, String)> hitRadio = [
  (
    Album(
      albumId: '37i9dQZF1E4woPSlTNI3Mg',
      artistName: '有 莫文蔚, 張雨生, 張震嶽 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/5H8TJITZE1sPjVR2ACzXNS/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4ECvjbbLaXuR',
      artistName: '有 TAEYANG, GD&TOP, 2NE1 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/30b9WulBM8sFuBo17nNq9c/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '337i9dQZF1E4zP0IDvXwU9R',
      artistName: '有 盧廣仲, 林宥嘉, 余佳運 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/1YrtUPrWcPfgdl9BaD9nhd/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4ADWke3OfdSe',
      artistName: '有 怕胖團, 芒果醬 Mango Jump, 老王樂隊 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/3n16EAnJtz6SZGx2zJssrI/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4xvNRUPqu4qM',
      artistName: '有 理想混蛋, 盧廣仲, 茄子蛋 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/6xErgeZYatiaQ36SB5bvi8/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4towDeoM8RCJ',
      artistName: '有 告五人, 理想混蛋, 美秀集團 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/6g641431O1Xkl7HAs2yFEg/zh-Hant',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4A4Wx1igYfpM',
      artistName: '有 LE SSERAFIM, NewJeans, KISS OF LIFE 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/6YVMFz59CuY7ngCxTxjpxE/zh-Hant',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4nfFUoZvynfT',
      artistName: '有 林俊傑, 王力宏, 陳奕迅 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/2elBjNSdBE2Y3f0j1mjrql/zh-Hant',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4rQHwAzPrBRe',
      artistName: '有 田馥甄, 張惠妹, 徐佳瑩 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/28gf2piFx6cAKOMIwcky5a/zh-Hant',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1E4wLluC9tRpcb',
      artistName: '有 派偉俊, 瘦子E.SO, 李浩瑋 Howard Lee 等更多',
      imageUrl:
          'https://pickasso.spotifycdn.com/image/ab67c0de0000deef/dt/v1/img/radio/artist/4TcOznbEZBqev21LzAH4KE/zh-Hant',
    ),

    'playlist',
  ),
];

// 第五個列表
final List<(Album, String)> noMatterWeather = [
  (
    Album(
      albumId: '37i9dQZF1DWT1y71ZcMPe5',
      artistName: 'The hottest songs you need to listen to right now.',
      imageUrl:
          'https://i.scdn.co/image/ab67706f0000000254a3b6038e8add3755d0669c',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DX2hAeSuWnj4k',
      artistName: '有優美的音樂在身邊，就像有個不打擾的陪伴，讓人即',
      imageUrl:
          'https://i.scdn.co/image/ab67706f00000002e4e2be25f6671a654c460015',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DX74DDhiuyXIl',
      artistName: '回家的路上，有好聽的歌曲陪伴，會讓人暫時忘了疲',
      imageUrl:
          'https://i.scdn.co/image/ab67706f0000000256c590d26a69cf96378775e7',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DXcJbO47LjBO2',
      artistName: '人氣高漲！網路瘋傳！本地大勢國際紅歌都在這兒！',
      imageUrl:
          'https://i.scdn.co/image/ab67706f00000002bc6c01665d3453fad13f06b7',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DWUVtE4OKgo8W',
      artistName: '弛放中又有激盪的溫度 - 是華語的時尚流派，是自在又',
      imageUrl:
          'https://i.scdn.co/image/ab67706f0000000223b167280839ea5353b35c24',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DX2hEEH7Yc5Au',
      artistName: '一起來欣賞女性音樂人的精采表現！',
      imageUrl:
          'https://scontent.ftpe3-1.fna.fbcdn.net/v/t39.30808-6/488552111_1096155085862053_2357601298187253006_n.jpg?stp=dst-jpg_p526x296_tt6&_nc_cat=109&ccb=1-7&_nc_sid=127cfc&_nc_ohc=0t_HRKufkEYQ7kNvwFOIotU&_nc_oc=Adn7Zs8KR1nshUno7igqpmpzbQng9Dlc7FK1Giaghwo48hgpOQPibdEtf21nIepHAZk&_nc_zt=23&_nc_ht=scontent.ftpe3-1.fna&_nc_gid=YKcWzfFNcT6jdaD9a0TV_w&oh=00_AfE7C9y8mKC59VF6W70UEXAFanhcm1CYY9OVmrSBIfuMTw&oe=67FFF0BC',
    ),
    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DWWcAe1qSHqUk',
      artistName: '爵士就是一個聲音的紳士，有歌聲動人、有演奏優雅，',
      imageUrl:
          'https://i.scdn.co/image/ab67706f00000002199513204b286866e29b4fbf',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '6IEya8GGAf3XnuUbDfm0WW',
      artistName: '最新鮮熱門的西洋歌曲一次送上，每週更新!',
      imageUrl:
          'https://image-cdn-fa.spotifycdn.com/image/ab67706c0000da84d0a6aa7c92bc82bc25731a9d',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DX2PQWej3xrgk',
      artistName: '電影裡、電視上、網路頻道中最熱門的華語主題曲插曲',
      imageUrl:
          'https://i.scdn.co/image/ab67706f00000002bed48e08282c0c3ace72e275',
    ),

    'playlist',
  ),
  (
    Album(
      albumId: '37i9dQZF1DX2Bq8lV5sVrF',
      artistName: '全亞洲千禧世代的華語最紅歌！像珍奶般人氣的同溫層',
      imageUrl:
          'https://i.scdn.co/image/ab67706f000000027269ebfcb2bf86ce5315c199',
    ),

    'playlist',
  ),
];

// 第六個列表
final List<(Album, String)> popMusic = [
  (
    Album(
      albumId: '5cr5ffcY53WvwLnsnlgcvY',
      name: 'As Is',
      artistName: '單曲‧Roy Kim',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e0255f0f4a36daa57bb7c4bf03f',
    ),
    'track',
  ),
  (
    Album(
      albumId: '54bQUg2tb1bckYZOOT0Vm6',
      name: 'Dream High(From "S...',
      artistName: '單曲‧Suzy, D.O., Jeong Dong Won',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e024ce08c5c7be78ed7ffc75f83',
    ),
    'track',
  ),
  (
    Album(
      albumId: '5xxYyxp5Rx0xu5YJ5vMPu5',
      name: 'Find Love',
      artistName: '單曲‧Ethan, CHUNG HA',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e02ef7db5a1cb2d178bddbb4485',
    ),
    'track',
  ),
  (
    Album(
      albumId: '4OTD8iF9X2i16JWDSlw5Gr',
      name: 'Fortunately',
      artistName: '單曲‧Mokita',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e02915b88e270865be6a605322b',
    ),
    'track',
  ),
  (
    Album(
      albumId: '1AgcC6Xyhp5gw0BnedjCJh',
      name: 'More Than A Feeling',
      artistName: '單曲.Declan J Donovan',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e024d5121a9497023e0c2afcf56',
    ),
    'track',
  ),
  (
    Album(
      albumId: '3AdXwuFn7j21HNiFMXvZXt',
      name: 'caramel',
      artistName: '單曲‧Sleep Token',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e02472a18af4551b76033f534e0',
    ),
    'track',
  ),
  (
    Album(
      albumId: '4tn0pD2FqGzRk7aYlGYo3Q',
      name: 'Buried Hearts(Origina...',
      artistName: '單曲.LEE SEUNG YOON',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e02d13f71026f52f6e92927b0f3',
    ),
    'track',
  ),
  (
    Album(
      albumId: '4E0P1xs3JNmsNr5c5nFTZJ',
      name: 'Back To Me',
      artistName: '單曲‧The Marías',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e02228d31c8b21605ed4a04923b',
    ),
    'track',
  ),
  (
    Album(
      albumId: '4kfXaAAZlfBrimPJYHlCEM',
      name: 'Sliver Lining',
      artistName: '單曲‧Laufey',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e025d3863cf5bb4f89cfbe83289',
    ),
    'track',
  ),
  (
    Album(
      albumId: '3YNjvUXgfQznx5IZHAXk6i',
      name: 'Loose',
      artistName: '單曲‧ENHYPEN',
      imageUrl:
          'https://i.scdn.co/image/ab67616d00001e02b0aeebda1fba38f83d50c0df',
    ),
    'track',
  ),
];
