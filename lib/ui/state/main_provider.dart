import 'package:flutter/material.dart';
import 'package:m7_bliblioteca/domain/models/book_model.dart';

class MainProvider with ChangeNotifier {
  bool _loading = true;
  int _currentSlide = 0;
  List<BookModel> _books = [];
  bool _isSlideEnabled = true;

  bool get loading => _loading;
  int get currentSlide => _currentSlide;
  List<BookModel> get books => _books;
  bool get isSlideEnabled => _isSlideEnabled;

  void setLoading(bool newState) {
    _loading = newState;
    notifyListeners();
  }

  void setCurrentSlide(int newState) {
    _currentSlide = newState;
    notifyListeners();
  }

  void setBooks(List<BookModel> newState) {
    _books = newState;
    notifyListeners();
  }

  void setIsSlideEnabled(bool newState) {
    _isSlideEnabled = newState;
    notifyListeners();
  }
}
