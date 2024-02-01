import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatefulWidget {
  final String text;
  final Color color;
  final FontWeight fontWeight;
  final double fontSize;
  final TextAlign textAlign;
  final TextOverflow? overflow;

  const CustomText(this.text,
      {super.key,
      this.color = Colors.white,
      this.fontWeight = FontWeight.normal,
      this.fontSize = 14,
      this.textAlign = TextAlign.left,
      this.overflow});
  @override
  State<CustomText> createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      textAlign: widget.textAlign,
      overflow: widget.overflow,
      style: GoogleFonts.titilliumWeb(
        textStyle: TextStyle(
          color: widget.color,
          fontWeight: widget.fontWeight,
          fontSize: widget.fontSize,
        ),
      ),
    );
  }
}
