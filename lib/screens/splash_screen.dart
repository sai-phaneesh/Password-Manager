import 'package:flutter/material.dart';
import 'package:ui_practice/screens/signin_signup_controller_screen/signin_signup_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debugPrint('initState Started');
    Future.delayed(const Duration(milliseconds: 5000)).then((value) =>
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const SignInSignUpController())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF0E85FF),
      child: Center(
        child: Image.asset('assets/images/splash_screen/logo.png'),
      ),
    );
  }
}
