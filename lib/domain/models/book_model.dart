class BookModel {
  final String id;
  final String name;
  final String description;
  final String cover;
  final String author;
  final String publishDate;

  const BookModel({
    required this.id,
    required this.name,
    required this.description,
    required this.cover,
    required this.author,
    required this.publishDate,
  });

  factory BookModel.fromJson(dynamic json) {
    return BookModel(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      cover: json['cover'],
      author: json['author'],
      publishDate: json['publishDate'],
    );
  }
}
