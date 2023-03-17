import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldnews_app/controller/cubit/get_news/get_news_cubit.dart';
import 'package:worldnews_app/utils/themes.dart';
import 'package:worldnews_app/view/screens/main_screens/home_screen.dart';
import 'package:worldnews_app/view/screens/authentication/login_screen.dart';
import 'package:worldnews_app/view/screens/authentication/reset_password_screen.dart';
import 'package:worldnews_app/view/screens/authentication/signup_screen.dart';
import 'package:worldnews_app/view/screens/main_screens/news_screen.dart';
import 'package:worldnews_app/view/screens/main_screens/search_screen.dart';
import 'package:worldnews_app/view/screens/main_screens/see_more_screen.dart';
import 'controller/cubit/forgot_password/reset_password_cubit.dart';
import 'controller/cubit/login/login_cubit.dart';
import 'controller/cubit/signup/sign_up_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (context) => LoginCubit(),
    ),
    BlocProvider(
      create: (context) => SignUpCubit(),
    ),
    BlocProvider(
      create: (context) => ResetPasswordCubit(),
    ),
    BlocProvider(create: (context) => GetNewsCubit()),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetNewsCubit, GetNewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return MaterialApp(
          theme: Themes.lightTheme,
          darkTheme: Themes.darkTheme,
          themeMode: GetNewsCubit.get(context).isDark
              ? ThemeMode.dark
              : ThemeMode.light,
          debugShowCheckedModeBanner: false,
          title: 'worldnews',
          routes: {
            LoginScreen.route: (context) => LoginScreen(),
            SignUpScreen.route: (context) => const SignUpScreen(),
            HomeScreen.route: (context) => HomeScreen(),
            ResetPasswordScreen.route: (context) => ResetPasswordScreen(),
            NewsScreen.route: (context) => const NewsScreen(),
            SeeMoreScreen.route: (context) => SeeMoreScreen(),
            SearchScreen.route: (context) => SearchScreen(),
          },
          home: StreamBuilder(
              stream: FirebaseAuth.instance.userChanges(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator.adaptive(),
                    ),
                  );
                }
                if (snapshot.data != null) {
                  return HomeScreen();
                } else {
                  return LoginScreen();
                }
              }),
        );
      },
    );
  }
}
