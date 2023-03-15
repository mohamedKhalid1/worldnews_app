import 'package:flutter/material.dart';
import 'package:worldnews_app/controller/cubit/get_news/get_news_cubit.dart';
import 'package:worldnews_app/utils/constants.dart';
import 'package:worldnews_app/view/screens/main_screens/news_screen.dart';
import 'package:worldnews_app/view/widgets/logo_widget.dart';

import '../../widgets/category_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  static const String route = "homeScreen";

  late TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.3),
                  child: const LogoWidget(),
                )),
                Expanded(
                  flex: 9,
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        crossAxisCount: 2),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    
                    physics: const BouncingScrollPhysics(),
                    itemCount: Constants.categories.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.transparent,
                          image: DecorationImage(image: AssetImage("assets/images/${Constants.categories[index]}.png"),fit: BoxFit.fill),
                        ),
                        child: Card(
                          color: Colors.transparent,

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 50,
                          //color: Constants.color2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: CategoryItem(
                              getNews: () {
                                GetNewsCubit.get(context)
                                    .getNews(Constants.categories[index]);
                                Navigator.of(context).pushNamed(NewsScreen.route);
                              },
                              title: Constants.categories[index].toUpperCase(),
                              subTitle:
                                  "You can find out all the news related to ${Constants.categories[index]} from here",
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
