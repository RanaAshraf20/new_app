import 'package:flutter/material.dart';

class CustomFriendContainer extends StatelessWidget {
  CustomFriendContainer({super.key, this.containerColor, this.textColor});
  Color? containerColor;
  Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(28)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '~ ',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          Text(
            'Friend ',
            style: TextStyle(fontSize: 16, color: textColor),
          ),
        ],
      ),
    );
  }
}
