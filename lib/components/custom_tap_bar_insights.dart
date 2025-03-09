import 'package:flutter/material.dart';

class CustomTabBarInsights extends StatelessWidget {
  const CustomTabBarInsights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Colors.blueGrey.withValues(alpha: 0.09),
          borderRadius: BorderRadius.circular(10)),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        dividerColor: Colors.transparent,
        labelColor: Colors.black,
        indicator: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.blueGrey.withValues(alpha: 0.1),
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        tabs: [
          Text('Categories'),
          Text('Merchants'),
        ],
      ),
    );
  }
}
