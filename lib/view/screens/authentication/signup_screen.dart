import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:worldnews_app/view/widgets/logo_widget.dart';

import '../../../controller/cubit/get_news/get_news_cubit.dart';
import '../../../controller/cubit/signup/sign_up_cubit.dart';
import '../../../utils/constants.dart';
import '../../widgets/textfiled_widget.dart';
import '../main_screens/home_screen.dart';
import 'login_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String route = "signupScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController usernameController = TextEditingController();

  final TextEditingController bioController = TextEditingController();

  bool loading = false;
  String res = "";

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is SignUpLoading) {
          loading = true;
        } else if (state is SignUpSuccess) {
          Navigator.pushReplacementNamed(context, HomeScreen.route);
          loading = false;
        } else if (state is SignUpFailure) {
          Constants.getSnackBar(context, state.error, Colors.red);
          loading = false;
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  GetNewsCubit.get(context).changeThemMode();
                },
                icon: GetNewsCubit.get(context).isDark
                    ? const Icon(Icons.brightness_4)
                    : const Icon(Icons.brightness_4_outlined),
              ),
            ],
          ),
          body: ModalProgressHUD(
            inAsyncCall: loading,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 70),
                          child: LogoWidget(),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        TextFieldInput(
                          textEditingController: usernameController,
                          hintText: "Enter your username",
                          textInputType: TextInputType.emailAddress,
                          validate: (value) {
                            if (value == null || value.isEmpty) {
                              return "user name must not be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFieldInput(
                          textEditingController: emailController,
                          hintText: "Enter your email",
                          textInputType: TextInputType.emailAddress,
                          validate: (value) {
                            if (value == null || value.isEmpty) {
                              return "email must not be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFieldInput(
                          textEditingController: passwordController,
                          hintText: "Enter your password",
                          textInputType: TextInputType.text,
                          validate: (value) {
                            if (value == null || value.isEmpty) {
                              return "password must not be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFieldInput(
                          textEditingController: bioController,
                          hintText: "Enter your bio",
                          textInputType: TextInputType.emailAddress,
                          validate: (value) {
                            if (value == null || value.isEmpty) {
                              return "bio must not be empty";
                            }
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Constants.color1, // Background color
                              ),
                              onPressed: () async {
                                if (formKey.currentState!.validate()) {
                                  SignUpCubit.get(context).signUp(
                                      emailAddress: emailController.text,
                                      password: passwordController.text);
                                }
                              },
                              child: const Text(
                                "Sign up",
                                style: TextStyle(fontSize: 18),
                              ),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.17,
                        ),
                        Text.rich(
                          TextSpan(
                              text: "Already have an account ",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(fontSize: 18),
                              children: [
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushReplacementNamed(
                                            context, LoginScreen.route);
                                      },
                                    text: "Login",
                                    style: const TextStyle(
                                        color: Constants.color1,
                                        decoration: TextDecoration.underline)),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
