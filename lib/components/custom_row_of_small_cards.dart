import 'package:flutter/material.dart';

import 'custom_more_component.dart';

class CustomRowOfSmallCards extends StatelessWidget {
  const CustomRowOfSmallCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomMoreComponent(
          image:
              'https://cdn-icons-png.freepik.com/256/13945/13945165.png?semt=ais_hybrid',
          color: Color(0xffC3D2E9).withValues(alpha: 0.5),
          text: 'Get cash',
        ),
        CustomMoreComponent(
          image:
              'https://cdn3.iconfinder.com/data/icons/classic-multiple-user-3/24/multiple_user_plus_classic_color_f-512.png',
          color: Color.fromARGB(255, 238, 248, 255),
          text: 'Referrals',
        ),
        CustomMoreComponent(
          image: 'https://cdn-icons-png.flaticon.com/512/5957/5957125.png',
          color: Color(0xffFFDE03).withValues(alpha: 0.2),
          text: 'Rewards',
        ),
        CustomMoreComponent(
          image: 'https://cdn-icons-png.flaticon.com/128/16445/16445706.png',
          color: Color(0xff8CDFC3).withValues(alpha: .2),
          text: 'Pay later',
        )
      ],
    );
  }
}
