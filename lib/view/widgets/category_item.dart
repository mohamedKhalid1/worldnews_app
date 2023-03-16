import 'package:flutter/material.dart';

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
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: Colors.white),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
    );
  }
}
