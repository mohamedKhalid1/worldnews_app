import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldnews_app/controller/cubit/get_news/get_news_cubit.dart';
import 'package:worldnews_app/view/screens/main_screens/search_screen.dart';
import 'package:worldnews_app/view/widgets/logo_widget.dart';
import 'package:worldnews_app/view/widgets/news_item.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';

import '../../../utils/constants.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);
  static const String route = "NewsScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, SearchScreen.route);
                },
                icon: const Icon(
                  Icons.youtube_searched_for,
                  color: Constants.color1,
                )),
            const SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {
                GetNewsCubit.get(context).changeThemMode();
              },
              icon: GetNewsCubit.get(context).isDark
                  ? const Icon(Icons.brightness_4)
                  : const Icon(Icons.brightness_4_outlined),
            ),
          ],
          title: const LogoWidget(),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
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
