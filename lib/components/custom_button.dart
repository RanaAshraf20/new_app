import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.text,
      this.buttonColor = Colors.black,
      this.textColor = Colors.white,
      this.raduis = 8,
      this.edgeInsets =
          const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      this.textSize = 18,
      this.fullWidth = false});
  final String text;
  double? raduis;
  Color? textColor;
  Color? buttonColor;
  EdgeInsets? edgeInsets;
  double? textSize;
  final bool fullWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: fullWidth ? double.infinity : null,
      padding: edgeInsets,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(raduis!)),
      child: Text(
        textAlign: TextAlign.center,
        text,
        style: TextStyle(color: textColor, fontSize: textSize),
      ),
    );
  }
}
