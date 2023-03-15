import 'package:flutter/material.dart';
import 'package:worldnews_app/utils/constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {Key? key,
      required this.getNews,
      required this.title,
      required this.subTitle})
      : super(key: key);
  final Function getNews;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        getNews();
      },
      contentPadding: const EdgeInsets.all(8),
      title: Padding(
        padding: const EdgeInsets.only(bottom: 5),
        child: Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(color: Colors.white, fontSize: 14),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
    );
  }
}
