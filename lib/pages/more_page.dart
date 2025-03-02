import 'package:flutter/material.dart';
import 'package:telda/components/custom_app_bar.dart';
import 'package:telda/components/custom_more_component.dart';
import 'package:telda/components/custom_row_of_small_cards.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            text: 'More',
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Essentials',
            style: TextStyle(color: Colors.grey, fontSize: 18),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: CustomRowOfSmallCards(),
          ),
          CustomMoreComponent(
            image: 'https://cdn-icons-png.flaticon.com/128/10139/10139526.png',
            color: Color.fromARGB(255, 218, 237, 255).withValues(alpha: 0.6),
            text: 'Points',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, bottom: 20),
            child: Text(
              'Life Style',
              style: TextStyle(color: Colors.grey, fontSize: 18),
            ),
          ),
          CustomMoreComponent(
            image: "https://cdn-icons-png.flaticon.com/128/18826/18826570.png",
            color: Color(0xffD3756B).withValues(alpha: 0.2),
            text: 'Shops',
          ),
        ],
      ),
    );
  }
}
