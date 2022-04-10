import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:searchword/model/dictionarymodel.dart';

final dicProvider = StateNotifierProvider<DictionaryProvider, word>(
    (ref) => DictionaryProvider());

class DictionaryProvider extends StateNotifier<word> {
  DictionaryProvider() : super(word(defination: "", name: "", valid: true));
  Future<void> getData(String query) async {
    final dio = Dio();
    try {
      final response = await dio.get(
        'https://dictionary-by-api-ninjas.p.rapidapi.com/v1/dictionary',
        queryParameters: {'word': query},
        options: Options(headers: {
          'x-rapidapi-host': 'dictionary-by-api-ninjas.p.rapidapi.com',
          'x-rapidapi-key': 'e7db4f58a9msh38c61008b84e869p1960f1jsn61164c8d1a95'
        }),
      );
      final define = (response.data['definition']);
      final name = (response.data['word']);
      final valid = (response.data['valid']);
      state = word(defination: define, name: name, valid: valid);
      // print(response.data);
    } on DioError catch (e) {}
  }
}
