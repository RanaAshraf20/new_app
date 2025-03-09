import 'package:flutter/material.dart';
import 'package:telda/components/custom_tap_bar_insights.dart';
import 'package:telda/components/custom_tap_bar_view.dart';
import 'package:telda/pages/insights_page.dart';

class SecondInsightsContainer extends StatelessWidget {
  const SecondInsightsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border:
            Border.all(color: Colors.blueGrey.withValues(alpha: 0.1), width: 1),
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [CustomTabBarInsights(), CustomTapBarView()],
      ),
    );
  }
}
