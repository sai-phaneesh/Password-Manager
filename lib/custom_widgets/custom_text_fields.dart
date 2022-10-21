import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practice/utilities/validators.dart';

class CustomTextFieldOne extends StatefulWidget {
  const CustomTextFieldOne(
      {Key? key,
      this.hintText,
      this.suffixIcon = false,
      required this.maxLength,
      required this.textInputAction})
      : super(key: key);
  final String? hintText;
  final bool suffixIcon;
  final int maxLength;

  final TextInputAction textInputAction;
  @override
  State<CustomTextFieldOne> createState() => _CustomTextFieldOneState();
}

class _CustomTextFieldOneState extends State<CustomTextFieldOne> {
  bool iconController = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        validator: (value) {
          return widget.maxLength == 10
              ? validateMobileNumber(value)
              : validateMpin(value);
        },
        maxLength: widget.maxLength,
        keyboardType: TextInputType.number,
        textInputAction: widget.textInputAction,
        style: GoogleFonts.openSans(
          fontWeight: FontWeight.w600,
        ),
        obscureText: widget.suffixIcon ? iconController : false,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          errorStyle: GoogleFonts.openSans(
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
          ),
          counterStyle: GoogleFonts.openSans(
            color: const Color(0xFFFFFFFF),
            fontWeight: FontWeight.bold,
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25,
          ),
          suffixIcon: widget.suffixIcon
              ? IconButton(
                  splashRadius: 25,
                  onPressed: () {
                    setState(() {
                      iconController = !iconController;
                    });
                  },
                  icon: Icon(
                      iconController ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          hintText: widget.hintText,
          hintStyle: GoogleFonts.openSans(
            color: const Color(0xFF787E8C),
            fontWeight: FontWeight.w600,
          ),
          disabledBorder: InputBorder.none,
          filled: true,
          fillColor: const Color(0xFFFFFFFF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
