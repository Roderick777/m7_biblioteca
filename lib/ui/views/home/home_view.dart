import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:m7_bliblioteca/data/services/book_service.dart';
import 'package:m7_bliblioteca/ui/state/main_provider.dart';
import 'package:m7_bliblioteca/ui/views/home/screens/library_slide.dart';
import 'package:m7_bliblioteca/ui/views/home/screens/main_slide.dart';
import 'package:m7_bliblioteca/utils/texts/text_utils.dart';
import 'package:provider/provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeViewTexts texts = HomeViewTexts();
  BookService bookService = BookService();
  int _currentSlide = 0;

  void setCurrentSlide(BuildContext c, int index) {
    setState(() => _currentSlide = index);

    if (index == 0) return;

    bookService.getBooks().then((books) {
      setState(() {
        Provider.of<MainProvider>(context, listen: false).setBooks(books);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<StatefulWidget> pages = [
      MainSlide(currentSlide: _currentSlide),
      LibrarySlide(currentSlide: _currentSlide),
    ];

    return Scaffold(
      extendBody: true,
      body: LiquidSwipe(
        pages: pages,
        enableSideReveal: true,
        preferDragFromRevealedArea: true,
        slideIconWidget: const Icon(Icons.chevron_left, color: Colors.white),
        onPageChangeCallback: (int index) => setCurrentSlide(context, index),
      ),
    );
  }
}
