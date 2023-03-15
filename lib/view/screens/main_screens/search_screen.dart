import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../controller/cubit/get_news/get_news_cubit.dart';
import '../../../utils/constants.dart';
import '../../widgets/logo_widget.dart';
import '../../widgets/news_item.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);
  final TextEditingController searchController = TextEditingController();
  static const String route = "searchController";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocConsumer<GetNewsCubit, GetNewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const LogoWidget(),
            centerTitle: true,
            titleTextStyle: const TextStyle(color: Colors.black),
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value == "") {
                      return "Search must not be empty";
                    } else {
                      return null;
                    }
                  },
                  keyboardType: TextInputType.text,
                  controller: searchController,
                  onChanged: (value) {
                    GetNewsCubit.get(context).getSearch(value);
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context,
                          color: Constants.color2, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context,
                          color: Constants.color1, width: 2),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.search_outlined),
                    hintText: "Search",
                    label: const Text("search"),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: ConditionalBuilder(
                  condition: state is! SearchNewsLoading,
                  builder: (BuildContext context) {
                    return Column(
                      children: [
                        Expanded(
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount:
                                GetNewsCubit.get(context).searchNews.length,
                            itemBuilder: (context, index) {
                              return NewsItem(
                                news:
                                    GetNewsCubit.get(context).searchNews[index],
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
                ),
              ),
            ],
          )),
        );
      },
    ));
  }
}
