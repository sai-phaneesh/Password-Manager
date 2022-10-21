import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets.dart';

class CustomButtonOne extends StatefulWidget {
  const CustomButtonOne({Key? key, required this.msg, required this.formKey})
      : super(key: key);
  final GlobalKey<FormState> formKey;
  final String msg;
  @override
  State<CustomButtonOne> createState() => _CustomButtonOneState();
}

class _CustomButtonOneState extends State<CustomButtonOne> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 140,
      child: ElevatedButton(
        onPressed: () {
          widget.formKey.currentState!.validate();
          debugPrint('${widget.msg} BUTTON PRESSED');

          // ScaffoldMessenger.of(context).showSnackBar(
          //   const SnackBar(
          //     content: Text("WORKS!!!"),
          //   ),
          // );
          displaySnackBar(msg: '${widget.msg} Successful', context: context);
          displayToast(
            msg: '${widget.msg} Successful',
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
        child: Text(
          widget.msg.toUpperCase(),
          style: GoogleFonts.openSans(
            color: const Color(0xFF0E85FF),
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
