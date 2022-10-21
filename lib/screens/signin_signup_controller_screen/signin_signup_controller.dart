import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../signin_screen/signin_screen.dart';
import '../signup_screen/signup_screen.dart';

class SignInSignUpController extends StatefulWidget {
  const SignInSignUpController({Key? key}) : super(key: key);

  @override
  State<SignInSignUpController> createState() => _SignInSignUpControllerState();
}

class _SignInSignUpControllerState extends State<SignInSignUpController> {
  int signInsignUpController = 0;
  late final List<Widget> body;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    body = [
      SignIn(forgotPassword: callBack),
      const SignUp(),
    ];
  }

  callBack() {
    setState(() {
      signInsignUpController = 1;
    });
  }

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
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image.asset('assets/images/signin_signup_screen/logo.png'),
              const SizedBox(
                height: 25,
              ),
              Container(
                // color: Colors.blue,
                margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.175,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              signInsignUpController = 0;
                            });
                          },
                          child: Text(
                            'SIGN IN',
                            style: GoogleFonts.openSans(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: signInsignUpController == 0
                                  ? FontWeight.bold
                                  : FontWeight.w600,
                              fontSize: signInsignUpController == 0 ? 22.5 : 20,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              signInsignUpController = 1;
                            });
                          },
                          child: Text(
                            'SIGN UP',
                            style: GoogleFonts.openSans(
                              color: const Color(0xFFFFFFFF),
                              fontWeight: signInsignUpController == 1
                                  ? FontWeight.bold
                                  : FontWeight.w600,
                              fontSize: signInsignUpController == 1 ? 22.5 : 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: signInsignUpController == 0
                                ? const Color(0xFFFFA222)
                                : Colors.transparent,
                          ),
                          width: 90,
                          height: 4,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: signInsignUpController == 1
                                ? const Color(0xFFFFA222)
                                : Colors.transparent,
                          ),
                          width: 90,
                          height: 4,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 0,
                thickness: 1,
                color: Colors.white.withOpacity(0.2),
              ),
              const SizedBox(
                height: 30,
              ),
              body[signInsignUpController],
            ],
          ),
        ),
      ),
    );
  }
}
