import 'package:flutter/material.dart';

class SignInSignUpController extends StatefulWidget {
  const SignInSignUpController({Key? key}) : super(key: key);

  @override
  State<SignInSignUpController> createState() => _SignInSignUpControllerState();
}

class _SignInSignUpControllerState extends State<SignInSignUpController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF20BBFF), Color(0xFF0E85FF)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset('assets/images/signin_signup_screen/logo.png'),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
