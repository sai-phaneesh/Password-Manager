import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonsOne extends StatefulWidget {
  const CustomButtonsOne({Key? key, required this.msg}) : super(key: key);
  final String msg;
  @override
  State<CustomButtonsOne> createState() => _CustomButtonsOneState();
}

class _CustomButtonsOneState extends State<CustomButtonsOne> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 150,
      child: ElevatedButton(
        onPressed: () {
          debugPrint('${widget.msg} BUTTON PRESSED');
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
          widget.msg,
          style: GoogleFonts.openSans(
            color: const Color(0xFF0E85FF),
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
