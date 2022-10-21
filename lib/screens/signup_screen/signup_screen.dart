import 'package:flutter/material.dart';

import '../../custom_widgets/custom_buttons.dart';
import '../../custom_widgets/custom_text_fields.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      color: Colors.transparent,
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextFieldOne(
              hintText: 'Mobile Number',
              textInputAction: TextInputAction.next,
              maxLength: 10,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFieldOne(
              hintText: 'Enter 4 digit MPin',
              suffixIcon: true,
              textInputAction: TextInputAction.done,
              maxLength: 4,
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFieldOne(
              hintText: 'Re-Enter 4 digit MPin',
              suffixIcon: true,
              textInputAction: TextInputAction.done,
              maxLength: 4,
            ),
            SizedBox(
              height: 20,
            ),
            CustomButtonOne(
              formKey: formKey,
              msg: 'Sign up',
            ),
          ],
        ),
      ),
    );
  }
}
