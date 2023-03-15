import 'package:dio/dio.dart';

class ApiManager {
  static String apiUrl = 'https://newsapi.org/v2/';
  static String apiKey = '9617f865758645cba88b75d048e47a89';

  static Future<List<dynamic>> getNews(String category) async {
    String url = '${apiUrl}top-headlines';
    Dio dio = Dio();
    Map<String, String> params = {
      'apiKey': apiKey,
      'category': category,
      'country': "us",
    };
    Response response = await dio.get(url, queryParameters: params);
    return response.data['articles'];
  }

  static Future<List<dynamic>> getSearch(String searchWord) async {
    String url = '${apiUrl}everything';
    Dio dio = Dio();
    Map<String, String> params = {
      'apiKey': apiKey,
      'q': searchWord,
    };
    Response response = await dio.get(url, queryParameters: params);
    return response.data['articles'];
  }
}
