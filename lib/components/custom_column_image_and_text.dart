import 'dart:ui';

import 'package:flutter/material.dart';

class CustomColumnImageAndText extends StatelessWidget {
  const CustomColumnImageAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
            'https://media.osoulmisrmagazine.com/2024/9/large/14/0/934.jpeg'),
        SizedBox(
          height: 25,
        ),
        Text(
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
            'Get your favorite Telda card! Pay online or in-store andenjoy the various benefits of your selected plan'),
      ],
    );
  }
}
