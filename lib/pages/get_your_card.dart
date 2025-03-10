import 'package:flutter/material.dart';
import 'package:telda/components/close_icon.dart';
import 'package:telda/components/custom_button.dart';
import 'package:telda/widgets/get_your_cards_body.dart';

class GetYourCard extends StatelessWidget {
  const GetYourCard({super.key});
  static String id = 'GetYourCard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 55, bottom: 30),
        child: GetYourCardBody(id: id),
      ),
    );
  }
}
