import 'package:flutter/material.dart';
import 'package:telda/pages/insights_page.dart';

import 'custom_insights_categories_tile.dart';

class CustomTapBarView extends StatelessWidget {
  const CustomTapBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: TabBarView(physics: NeverScrollableScrollPhysics(), children: [
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index) {
              return CustomInsightsCategoriesTile(
                text: 'Groceries',
                icon: Icons.access_alarm_sharp,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 28.0),
          child: ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(0),
            itemBuilder: (BuildContext context, int index) {
              return CustomInsightsCategoriesTile(
                text: 'Groceries',
                icon: Icons.access_alarm_sharp,
              );
            },
          ),
        ),
      ]),
    );
  }
}
