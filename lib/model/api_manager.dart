import 'package:dio/dio.dart';

class ApiManager {
  static String apiUrl = 'https://newsapi.org/v2/';
  //static String apiKey = '9617f865758645cba88b75d048e47a89';
  //static String apiKey = '81faf1a3db504fe598bc2fa70a4a5bc6';
  static String apiKey = '9ef72eb4ea5a473d9654e88dc9b3b227';

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
