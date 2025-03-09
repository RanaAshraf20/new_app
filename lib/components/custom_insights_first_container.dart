import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomInsightsFirstContainer extends StatelessWidget {
  const CustomInsightsFirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'EGP0',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            'Expenenss this month',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          SizedBox(
            height: 130,
          ),
          Row(
            children: [
              Column(
                children: [
                  Icon(
                    FontAwesomeIcons.arrowTrendUp,
                    size: 14,
                    color: Colors.grey.withValues(alpha: 0.5),
                  ),
                  SizedBox(
                    width: 16,
                    child: Divider(
                      height: 0,
                      thickness: 2,
                      color: Colors.grey.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'No data to display',
                style: TextStyle(
                    color: Colors.grey.withValues(alpha: 0.5), fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.indigoAccent,
                  thickness: 2,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text('Expeness', style: TextStyle(fontSize: 10)),
              Spacer(
                flex: 4,
              ),
              Dash(
                length: 30,
                dashColor: Colors.black,
                dashLength: 2,
                dashGap: 2,
              ),
              SizedBox(
                width: 6,
              ),
              Text('Budget', style: TextStyle(fontSize: 10)),
            ],
          )
        ],
      ),
    );
  }
}
