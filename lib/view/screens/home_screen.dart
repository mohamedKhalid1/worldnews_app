import 'package:flutter/material.dart';
import 'package:worldnews_app/utils/constants.dart';
import 'package:worldnews_app/view/widgets/logo_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = "homeScreen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 110),
              child: LogoWidget(),
            ),
          ),
          Expanded(
            flex: 6,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(bottom: 5, top: 5),
                    margin:
                        const EdgeInsets.only(bottom: 20, left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Constants.color2,
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(40)),
                    ),
                    child: Column(
                      children: const [
                        ListTile(
                          leading: Icon(
                            Icons.sports_football,
                            size: 50,
                            color: Constants.color2,
                          ),
                          title: Text(
                            "Healthy",
                            style: Constants.styleTitle,
                          ),
                          subtitle: Text(
                            "see more about healthy category",
                            style: Constants.styleSubTitle,
                          ),
                          trailing: Icon(
                            Icons.double_arrow,
                            color: Constants.color1,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
