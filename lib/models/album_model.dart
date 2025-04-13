class Album {
  String albumId;
  String? name;
  String? artistName;
  String? moduleType;
  String? additionalType;
  String? imageUrl;

  Album({
    required this.albumId,
    this.name,
    this.artistName,
    this.moduleType,
    this.additionalType,
    this.imageUrl,
  });
}
