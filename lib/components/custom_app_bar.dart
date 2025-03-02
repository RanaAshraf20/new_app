import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(color: Colors.black, fontSize: 28),
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: onPressed,
          icon: icon,
          iconSize: 32,
        ),
      ],
    );
  }
}
