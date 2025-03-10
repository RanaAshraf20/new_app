import 'package:flutter/material.dart';

class RowOfLogos extends StatelessWidget {
  const RowOfLogos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 25,
          child: Image.network(
              'https://i.pinimg.com/736x/cc/94/79/cc9479682664fc966ac6171ed7b23cb1.jpg'),
        ),
        SizedBox(height: 25, child: VerticalDivider()),
        SizedBox(
          height: 25,
          child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/7/74/Banque_du_caire_Logo.svg/799px-Banque_du_caire_Logo.svg.png'),
        ),
        SizedBox(height: 25, child: VerticalDivider()),
        SizedBox(
          height: 20,
          child: Image.asset('images/CBE-Logo.png'),
        ),
      ],
    );
  }
}
