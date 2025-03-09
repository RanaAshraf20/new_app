import 'package:flutter/material.dart';
import 'package:telda/components/close_icon.dart';
import 'package:telda/components/custom_insights_first_container.dart';
import 'package:telda/components/custom_insights_sub_title_row.dart';
import 'package:telda/pages/insights_page.dart';
import 'package:telda/widgets/second_insights_container.dart';

class InsightsBody extends StatelessWidget {
  const InsightsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CloseIcon(
          onTap: () {
            Navigator.pop(context);
          },
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.only(top: 20),
            children: [
              Text(
                'Insights',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 22,
              ),
              CustomInsightsFirstContainer(),
              CustomInsightsSubTitleRow(),
              SizedBox(
                height: 6,
              ),
              SecondInsightsContainer(),
            ],
          ),
        )
      ],
    );
  }
}
