class Post {
  final int id;
  final String title;
  final String author;
  final String description;
  final String imageUrl;

  Post(this.id,
      this.title,
      this.author,
      this.description,
      this.imageUrl,);

  Post.fromJson(Map json)
      : id = json['id'],
        title = json['title'],
        author = json['author'],
        description = json['description'],
        imageUrl = json['imageUrl'];

  Map toJson() =>
      {
        'title': title,
        'description': description,
      };
}
