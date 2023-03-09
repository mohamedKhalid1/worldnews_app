import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldnews_app/utils/constants.dart';
import 'package:worldnews_app/view/screens/home_screen.dart';
import 'package:worldnews_app/view/screens/login_screen.dart';
import 'package:worldnews_app/view/screens/reset_password_screen.dart';
import 'package:worldnews_app/view/screens/signup_screen.dart';

import 'controller/cubit/forgot_password/reset_password_cubit.dart';
import 'controller/cubit/login/login_cubit.dart';
import 'controller/cubit/signup/sign_up_cubit.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => ResetPasswordCubit(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        title: 'worldnews',
        routes: {
          LoginScreen.route: (context) => LoginScreen(),
          SignUpScreen.route: (context) => const SignUpScreen(),
          HomeScreen.route: (context) => const HomeScreen(),
          ResetPasswordScreen.route: (context) => ResetPasswordScreen(),
        },
         home:const HomeScreen()
         //SignUpScreen(),
        // StreamBuilder(
        //     stream: FirebaseAuth.instance.userChanges(),
        //     builder: (context, snapshot) {
        //       if (snapshot.connectionState == ConnectionState.waiting) {
        //         return const Scaffold(
        //           body: Center(
        //             child: CircularProgressIndicator.adaptive(),
        //           ),
        //         );
        //       }
        //       if (snapshot.data != null) {
        //         return const HomeScreen();
        //       } else {
        //         return LoginScreen();
        //       }
        //     }),
      ),
    );
  }
}
