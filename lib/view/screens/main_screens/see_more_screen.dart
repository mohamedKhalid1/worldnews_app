import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldnews_app/controller/cubit/get_news/get_news_cubit.dart';
import 'package:worldnews_app/model/news_model.dart';
import '../../../utils/constants.dart';
import '../../widgets/logo_widget.dart';

class SeeMoreScreen extends StatelessWidget {
  SeeMoreScreen({Key? key}) : super(key: key);
  static const String route = "SeeMoreScreen";
  late NewsModel news;

  @override
  Widget build(BuildContext context) {
    news = ModalRoute.of(context)?.settings.arguments as NewsModel;
    return BlocConsumer<GetNewsCubit, GetNewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              TextButton(
                onPressed: () {
                  GetNewsCubit.get(context).openBrowser(news.url!);
                },
                child: const Text("browser >"),
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
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      news.title ?? "No Title",
                      maxLines: 2,
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(fontSize: 18),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          news.urlToImage ??
                              "https://www.salonlfc.com/wp-content/uploads/2018/01/image-not-found-1-scaled.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 260),
                    height: 320,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Constants.color2,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Theme.of(context).secondaryHeaderColor,
                          spreadRadius: 7.0,
                          offset: const Offset(
                            2.0,
                            2.0,
                          ), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: TypewriterAnimatedTextKit(
                              repeatForever: false,
                              totalRepeatCount: 1,
                              text: [
                                news.content ?? "No Content",
                              ],
                              textStyle: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
