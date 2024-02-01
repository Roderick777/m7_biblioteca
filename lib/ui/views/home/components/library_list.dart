import 'package:flutter/material.dart';
import 'package:m7_bliblioteca/domain/models/book_model.dart';
import 'package:m7_bliblioteca/ui/views/home/components/book_card.dart';

class LibraryList extends StatefulWidget {
  final Size size;
  final List<BookModel> books;
  const LibraryList({
    super.key,
    required this.size,
    required this.books,
  });

  @override
  State<LibraryList> createState() => _LibraryListState();
}

class _LibraryListState extends State<LibraryList> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 230,
      width: widget.size.width,
      child: SizedBox(
        height: (70 * widget.books.length + 10),
        width: widget.size.width,
        child: ListView.builder(
            itemCount: widget.books.length,
            itemBuilder: (context, index) {
              BookModel book = widget.books[index];
              return BookCard(book: book);
            }),
      ),
    );
  }
}
