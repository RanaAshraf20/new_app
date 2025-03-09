import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/close_icon.dart';
import 'package:telda/widgets/insights_body.dart';

class InsightsPage extends StatefulWidget {
  const InsightsPage({super.key});
  static String id = 'InsightsPage';

  @override
  State<InsightsPage> createState() => _InsightsPageState();
}

class _InsightsPageState extends State<InsightsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white.withValues(alpha: 0.96),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 16.0, right: 16, top: 60, bottom: 20),
          child: InsightsBody(),
        ),
      ),
    );
  }
}
