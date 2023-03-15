import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldnews_app/controller/cubit/get_news/get_news_cubit.dart';
import 'package:worldnews_app/view/widgets/logo_widget.dart';
import 'package:worldnews_app/view/widgets/news_item.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);
  static const String route = "NewsScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const LogoWidget(),
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: BlocConsumer<GetNewsCubit, GetNewsState>(
              listener: (context, state) {},
              builder: (context, state) {
                return ConditionalBuilder(
                  condition: state is! GetNewsLoading,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: GetNewsCubit.get(context).news.length,
                            itemBuilder: (context, index) {
                              return NewsItem(
                                news: GetNewsCubit.get(context).news[index],
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  },
                  fallback: (BuildContext context) {
                    return const Center(
                      child: CircularProgressIndicator.adaptive(),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}