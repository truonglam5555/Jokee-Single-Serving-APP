class JokeModel {
  late String id;
  late String content;
  late bool? isLike;
  JokeModel({
    required this.id,
    required this.content,
    this.isLike,
  });
}
