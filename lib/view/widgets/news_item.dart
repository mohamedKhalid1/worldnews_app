import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:worldnews_app/model/news_model.dart';
import 'package:worldnews_app/utils/constants.dart';
import 'package:worldnews_app/view/screens/main_screens/see_more_screen.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({Key? key, required this.news}) : super(key: key);
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, SeeMoreScreen.route,
                    arguments: news); //arguments: article);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text("See More"),
                  Icon(Icons.arrow_forward_ios_outlined),
                ],
              )),
          Stack(
            alignment: Alignment.topCenter,
            children: [
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin:
                        const EdgeInsets.only(top: 280, right: 15, left: 15),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Constants.color2,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 7.0,
                          offset: Offset(
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
                            child: Text(
                              news.description ?? "No Description",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
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
          const SizedBox(
            height: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  news.author ?? "No Author",
                  maxLines: 1,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              Text(
                DateFormat.yMMMd().format(DateTime.parse(news.publishedAt!)),
                style: const TextStyle(fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
