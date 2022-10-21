import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonOne extends StatefulWidget {
  const CustomButtonOne({Key? key, required this.msg}) : super(key: key);
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
            fontSize: 20,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
