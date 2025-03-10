import 'package:flutter/material.dart';
import 'package:telda/components/custom_app_bar.dart';
import 'package:telda/components/custom_button.dart';
import 'package:telda/components/custom_column_image_and_text.dart';
import 'package:telda/pages/get_your_card.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18, right: 18, top: 60, bottom: 20),
      child: Column(
        children: [
          CustomAppBar(
            text: 'Cards',
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0, left: 14, right: 14),
            child: CustomColumnImageAndText(),
          ),
          Spacer(
            flex: 1,
          ),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, GetYourCard.id);
            },
            fullWidth: true,
            edgeInsets:
                const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
            text: 'Get your card now',
            textSize: 20,
            raduis: 14,
          ),
        ],
      ),
    );
  }
}
