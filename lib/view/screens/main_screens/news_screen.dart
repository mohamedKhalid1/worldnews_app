import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';

import '../../widgets/tab_container_item.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: TabContainer(
              childPadding: const EdgeInsets.all(20),
              radius: 0,
              colors: [
                Color(0xff000338),
                Color(0xff021054),
                Color(0xff08306c),
                Color(0xff0d57a1),
                Color(0xff0d57a1),
                Color(0xff0d57a1),
              ],
              tabEdge: TabEdge.top,
              tabs: [
                // Icon(Icons.headphones),
                // Icon(
                //   Icons.headphones_battery,
                // ),
                // Icon(Icons.headphones_battery_sharp),
                // Icon(Icons.headphones_outlined)
                "health",
                "health",
                "health",
                "health",
                "health",
                "health",
              ],
              selectedTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
              unselectedTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold),
              children: const [
                TabContainerItem(),
                TabContainerItem(),
                TabContainerItem(),
                TabContainerItem(),
                TabContainerItem(),
                TabContainerItem()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
