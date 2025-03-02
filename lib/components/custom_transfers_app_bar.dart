import 'package:flutter/material.dart';
import 'package:telda/components/custom_elevation_buttom.dart';

class CustomTransfersAppBar extends StatelessWidget {
  const CustomTransfersAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transfers',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
          ),
        ),
        Spacer(
          flex: 1,
        ),
        CustomElevationButton(),
      ],
    );
  }
}
