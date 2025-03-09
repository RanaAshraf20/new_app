import 'package:flutter/material.dart';
import 'package:telda/components/close_icon.dart';
import 'package:telda/components/custom_button.dart';
import 'package:telda/pages/home_page.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});
  static String id = 'BottomSheetPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 55, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                CloseIcon(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
                width: double.infinity,
                height: 170,
                child: Image.network(
                    'https://tradefeeds.com/wp-content/uploads/2022/01/Layer-1.png')),
            SizedBox(
              height: 30,
            ),
            Text(
              'Your account is not active yet',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              textAlign: TextAlign.center,
              'Your account will be activated after you order, receive and activate your card. Once done, you will be able to add money to your account.',
              style: TextStyle(fontSize: 19),
            ),
            Spacer(),
            CustomButton(
              onTap: () {
                Navigator.pop(context);
                Navigator.pop(context);
              },
              fullWidth: true,
              edgeInsets:
                  const EdgeInsets.symmetric(horizontal: 60, vertical: 16),
              text: 'Dismiss',
              textSize: 16,
              raduis: 14,
            )
          ],
        ),
      ),
    );
  }
}
