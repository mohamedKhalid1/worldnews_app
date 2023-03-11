import 'package:flutter/material.dart';

class TabContainerItem extends StatelessWidget {
  const TabContainerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Page 1',
            style: Theme.of(context).textTheme.headline5?.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 50.0),
          const Text(
            '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur scelerisque, est ac suscipit interdum, leo lacus ultrices metus, eget tristique metus velit eget nisi. Cras ut sagittis libero, in volutpat erat. Proin luctus turpis nec molestie congue. Nam et mollis augue. Duis ornare odio vel egestas lacinia. Nam luctus venenatis diam sollicitudin elementum. Duis laoreet, mi quis luctus lacinia, nunc mauris auctor turpis, ac condimentum felis augue at purus. Integer eu dolor vehicula odio elementum vulputate vel non neque.
        Vestibulum et sapien sed quam euismod rutrum. Phasellus molestie dignissim ullamcorper. Donec eleifend sapien egestas tincidunt ornare. Pellentesque elit leo, bibendum nec augue nec, faucibus eleifend nisi. In blandit nulla sit amet congue tincidunt. Etiam dictum ornare justo, vulputate aliquam nisi egestas id. Nulla diam ipsum, pretium vitae leo et, fringilla mollis arcu. Praesent ut ipsum malesuada, posuere quam non, consectetur sem. Aenean velit dolor, laoreet sit amet lacinia quis, porta vitae tortor. Pellentesque scelerisque lacus nec velit finibus pharetra. Donec lacus arcu, consectetur eget nibh ac, viverra mollis nunc. Morbi auctor condimentum odio, ut laoreet neque maximus et. Mauris ut magna ipsum.''',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
/*
TabContainer(
            childPadding: EdgeInsets.all(20),
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
              color: Colors.red,
              fontSize: 15.0,
            ),
            unselectedTextStyle: const TextStyle(
              color: Colors.blue,
              fontSize: 13.0,
            ),
            children: const [
              TabContainerItem(),
              TabContainerItem(),
              TabContainerItem(),
              TabContainerItem(),
              TabContainerItem(),
              TabContainerItem()

            ],
          )
 */