part of 'get_news_cubit.dart';

@immutable
abstract class GetNewsState {}

class GetNewsInitial extends GetNewsState {}

class GetNewsLoading extends GetNewsState {}

class GetNewsSuccess extends GetNewsState {}

class GetNewsFailure extends GetNewsState {
  final String error;

  GetNewsFailure({required this.error});
}

class OpenBrowserLoading extends GetNewsState {}

class OpenBrowserSuccess extends GetNewsState {}

class OpenBrowserFailure extends GetNewsState {
  final String error;

  OpenBrowserFailure({required this.error});
}

class SearchNewsLoading extends GetNewsState {}

class SearchNewsSuccess extends GetNewsState {}

class SearchNewsFailure extends GetNewsState {
  final String error;

  SearchNewsFailure({required this.error});
}

class ChangeThemeMode extends GetNewsState {}
