import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/custom_widgets/custom_buttons.dart';

import '../../custom_widgets/custom_text_fields.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      color: Colors.transparent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomTextFieldOne(
            hintText: 'Mobile Number',
            textInputAction: TextInputAction.next,
            maxLength: 10,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomTextFieldOne(
            hintText: 'MPin',
            suffixIcon: true,
            textInputAction: TextInputAction.done,
            maxLength: 4,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            'Forgot your password?',
            style: TextStyle(
              color: Color(0xFFFFFFFF),
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const CustomButtonOne(msg: 'SIGN IN'),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: Image.asset(
                'assets/images/signin_signup_screen/fingerprint_icon.png'),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'OR',
                  style: GoogleFonts.openSans(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'USE YOUR FINGERPRINT TO LOGIN',
                  style: GoogleFonts.openSans(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
