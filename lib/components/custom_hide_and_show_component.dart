import 'package:flutter/material.dart';

class CustomHideAndShowComponent extends StatelessWidget {
  const CustomHideAndShowComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.remove_red_eye,
          size: 14,
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          'Current balance',
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
