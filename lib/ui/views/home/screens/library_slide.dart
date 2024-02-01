import 'package:flutter/material.dart';
import 'package:m7_bliblioteca/domain/models/book_model.dart';
import 'package:m7_bliblioteca/ui/components/custom_text.dart';
import 'package:m7_bliblioteca/ui/state/main_provider.dart';
import 'package:m7_bliblioteca/ui/views/home/components/header.dart';
import 'package:m7_bliblioteca/ui/views/home/components/library_list.dart';
import 'package:m7_bliblioteca/ui/views/home/components/library_loader.dart';
import 'package:m7_bliblioteca/utils/texts/text_utils.dart';
import 'package:m7_bliblioteca/domain/constants/constants.dart';
import 'package:provider/provider.dart';

class LibrarySlide extends StatefulWidget {
  final int currentSlide;
  const LibrarySlide({super.key, required this.currentSlide});
  @override
  State<LibrarySlide> createState() => _LibrarySlideState();
}

class _LibrarySlideState extends State<LibrarySlide> {
  HomeViewTexts texts = HomeViewTexts();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<BookModel> books = Provider.of<MainProvider>(context).books;

    return Stack(
      children: [
        Positioned(
          child: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
        ),
        Positioned(
          width: size.width,
          height: 120,
          child: Image.network(
            '${kImageUrl}portada.jpg',
            width: size.width,
            fit: BoxFit.fitWidth,
          ),
        ),
        Container(
          decoration: BoxDecoration(color: Colors.blue.withAlpha(100)),
        ),
        const HomeHeader(),
        Positioned(
          width: size.width,
          top: 150,
          child: CustomText(
            texts.books,
            fontSize: 38,
            textAlign: TextAlign.center,
          ),
        ),
        Builder(builder: (BuildContext c) {
          if (books.isNotEmpty) return LibraryList(size: size, books: books);
          return LibraryLoader(size: size);
        })
      ],
    );
  }
}
