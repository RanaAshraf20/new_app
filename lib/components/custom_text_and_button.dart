import 'package:flutter/material.dart';
import 'package:telda/components/custom_button.dart';

class CustomTextAndButton extends StatelessWidget {
  const CustomTextAndButton({
    super.key,
    required this.textButtonColor,
    required this.buttonText,
    required this.buttonColor,
  });

  final Color? textButtonColor;
  final String buttonText;
  final Color? buttonColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              'Dismiss',
              style: TextStyle(fontSize: 16, color: textButtonColor),
            )),
        SizedBox(
          width: 22,
        ),
        CustomButton(
            text: buttonText, buttonColor: buttonColor, textColor: Colors.white)
      ],
    );
  }
}
