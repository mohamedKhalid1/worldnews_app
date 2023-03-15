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
      // await canLaunchUrl(browserUrl as Uri);
      await launchUrl(browserUrl as Uri);
      OpenBrowserSuccess();
    }
    catch (error) {
      OpenBrowserFailure(error: error.toString());
    }
  }
}