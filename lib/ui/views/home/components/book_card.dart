import 'package:flutter/material.dart';
import 'package:m7_bliblioteca/domain/constants/constants.dart';
import 'package:m7_bliblioteca/domain/models/book_model.dart';
import 'package:m7_bliblioteca/ui/components/custom_text.dart';

class BookCard extends StatefulWidget {
  final BookModel book;
  const BookCard({super.key, required this.book});

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        child: Row(children: [
          SizedBox(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 200,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('$kImageUrl${widget.book.cover}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Container(
              height: 200,
              width: size.width - 160,
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(children: [
                CustomText(
                  widget.book.name,
                  fontSize: 20,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(child: CustomText(widget.book.description))
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
