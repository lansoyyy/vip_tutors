import 'package:flutter/material.dart';
import 'package:vip_tutors/presentation/views/auth/signup_view.dart';
import 'package:vip_tutors/presentation/views/home_view.dart';
import 'package:vip_tutors/presentation/widgets/button_widget.dart';
import 'package:vip_tutors/presentation/widgets/text_widget.dart';
import 'package:vip_tutors/presentation/widgets/textfield_widget.dart';
import 'package:vip_tutors/utils/asset_helper.dart';
import 'package:vip_tutors/utils/colors.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final email = TextEditingController();
  final password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image.asset(
                    AssetHelper().loginIllu,
                    width: 250,
                    height: 250,
                  ),
                  const SizedBox(
                    height: 12.5,
                  ),
                  TextWidget(
                    text: 'Hi! Welcome',
                    fontSize: 25,
                    color: secondary,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 450,
            decoration: const BoxDecoration(
                color: secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                )),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  TextWidget(
                    text: 'Log in',
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'Medium',
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TextFieldWidget(
                    height: 80,
                    inputType: TextInputType.emailAddress,
                    borderColor: Colors.white,
                    label: 'Enter Email',
                    controller: email,
                  ),
                  TextFieldWidget(
                    height: 80,
                    borderColor: Colors.white,
                    label: 'Enter Password',
                    controller: password,
                    isObscure: true,
                    showEye: true,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonWidget(
                    color: Colors.white,
                    height: 50,
                    width: 320,
                    fontSize: 20,
                    label: 'Log in',
                    textColor: secondary,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const HomeView()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                          width: 110,
                          child: Divider(
                            color: Colors.white,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: TextWidget(
                          text: 'or log in with',
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                          width: 110,
                          child: Divider(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextWidget(
                    text: 'Don’t have an account ?',
                    fontSize: 14,
                    color: Colors.white,
                    fontFamily: 'Medium',
                  ),
                  const SizedBox(
                    height: 2.5,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SignupView()),
                      );
                    },
                    child: TextWidget(
                      text: 'Create an Account',
                      fontSize: 15,
                      color: Colors.white,
                      fontFamily: 'Bold',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
