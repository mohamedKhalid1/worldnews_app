import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:worldnews_app/model/api_manager.dart';
import 'package:worldnews_app/model/news_model.dart';

part 'get_news_state.dart';

class GetNewsCubit extends Cubit<GetNewsState> {
  GetNewsCubit() : super(GetNewsInitial());

  static GetNewsCubit get(context) => BlocProvider.of(context);
  List news = [];
  List searchNews = [];
  bool isDark=false;

  Future<void> getNews(String category) async {
    emit(GetNewsLoading());
    try {
      List newsAsJson = await ApiManager.getNews(category);
      news = newsAsJson.map((e) => NewsModel.fromJson(e)).toList();
      emit(GetNewsSuccess());
    } catch (error) {
      emit(GetNewsFailure(error: error.toString()));
    }
  }

  Future openBrowser(String browserUrl) async {
    emit(OpenBrowserLoading());
    try {
      await launchUrl(Uri.parse(browserUrl));
      OpenBrowserSuccess();
    } catch (error) {
      OpenBrowserFailure(error: error.toString());
    }
  }

  Future<void> getSearch(String searchWord) async {
    emit(SearchNewsLoading());
    try {
      List newsAsJson = await ApiManager.getSearch(searchWord);
      searchNews = newsAsJson.map((e) => NewsModel.fromJson(e)).toList();
      emit(SearchNewsSuccess());
    } catch (error) {
      emit(SearchNewsFailure(error: error.toString()));
    }
  }

  void changeThemMode(){
    isDark= !isDark;
    emit(ChangeThemeMode());
  }

}
