import 'package:m7_bliblioteca/domain/models/book_model.dart';
import 'package:m7_bliblioteca/utils/http/http_util.dart';

class BookService {
  HttpUtil http = HttpUtil();

  Future<List<BookModel>> getBooks() async {
    String url = 'https://run.mocky.io/v3/6034cd7a-0179-4bf1-9ff2-d4c2f16d8f83';
    dynamic res = await http.get(url);
    List<BookModel> response = [];

    for (int i = 0; i < res['response'].length; i++) {
      response.add(BookModel.fromJson(res['response'][i]));
    }
    return response;
  }
}
