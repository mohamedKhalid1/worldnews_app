import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/material.dart';
import 'package:tab_container/tab_container.dart';
import 'package:worldnews_app/utils/constants.dart';
import 'package:worldnews_app/view/widgets/logo_widget.dart';

import '../../widgets/tab_container_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const String route = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TabContainerController _controller;
  late TextTheme textTheme;

  @override
  void initState() {
    _controller = TabContainerController(length: 3);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    textTheme = Theme.of(context).textTheme;
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
                child: LogoWidget(),
              )),
              Expanded(
                flex: 8,
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 20,
                      color: const Color(0xff212bf3),
                      child: const ListTile(
                        contentPadding: EdgeInsets.all(8),
                        title: Text(
                          "Health",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        subtitle: Text(
                          "data data data data data data v data data datavv data",
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(Icons.arrow_forward_ios_outlined,
                            color: Colors.white),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
