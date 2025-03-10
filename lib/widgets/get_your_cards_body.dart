import 'package:flutter/material.dart';
import 'package:telda/components/close_icon.dart';
import 'package:telda/components/custom_button.dart';
import 'package:telda/components/row_of_logos.dart';
import 'package:telda/pages/get_your_card.dart';

class GetYourCardBody extends StatelessWidget {
  const GetYourCardBody({
    super.key,
    required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CloseIcon(
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          textAlign: TextAlign.center,
          'GET YOUR CARD ',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          textAlign: TextAlign.center,
          'IN 2 MINUTES',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          textAlign: TextAlign.center,
          'Spend anywhere, withdraw cash from any ATM in Egypt & track your spendings',
          style: TextStyle(fontSize: 16, color: Colors.black45),
        ),
        SizedBox(
          height: 40,
        ),
        SizedBox(
          child: Image.network(
              'https://media.osoulmisrmagazine.com/2024/9/large/14/0/934.jpeg'),
        ),
        SizedBox(
          height: 20,
        ),
        Spacer(),
        Text(
          textAlign: TextAlign.center,
          maxLines: 2,
          'Licensed by the Central Bank of Egypt, in partnership with Banuqe Du Cairo and powered ...',
          style: TextStyle(fontSize: 14, color: Colors.black45),
        ),
        SizedBox(
          height: 10,
        ),
        RowOfLogos(),
        SizedBox(
          height: 40,
        ),
        CustomButton(
          onTap: () {
            Navigator.pushNamed(context, GetYourCard.id);
          },
          fullWidth: true,
          edgeInsets: const EdgeInsets.symmetric(horizontal: 60, vertical: 12),
          text: 'Get your card now',
          textSize: 18,
          raduis: 14,
        ),
      ],
    );
  }
}
