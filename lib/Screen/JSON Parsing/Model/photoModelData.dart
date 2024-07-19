class JsonModel {
  late int albumId, id;
  late String title, url, thumbnailUrl;

  JsonModel({
    required this.title,
    required this.albumId,
    required this.id,
    required this.thumbnailUrl,
    required this.url,
  });

  factory JsonModel.fromMap(Map m1) {
    return JsonModel(
        title: m1['title'],
        albumId: m1['albumId'],
        id: m1['id'],
        thumbnailUrl: m1['thumbnailUrl'],
        url: m1['url']);
  }
}
