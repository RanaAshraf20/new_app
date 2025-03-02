import 'dart:ui';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:telda/components/custom_app_bar.dart';
import 'package:telda/components/custom_button.dart';
import 'package:telda/components/custom_card.dart';
import 'package:telda/components/custom_circle_avatar.dart';
import 'package:telda/components/custom_circle_avatar_with_border.dart';
import 'package:telda/components/custom_dots_decator.dart';
import 'package:telda/components/custom_hide_and_show_component.dart';
import 'package:telda/components/custom_page_view.dart';
import 'package:telda/components/row_of_circle_avatars.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();
  int current_page = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            text: 'Home',
            icon: Icon(Icons.account_circle),
            onPressed: () {},
          ),
          Text(
            'EGP0',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          CustomHideAndShowComponent(),
          SizedBox(
            height: 20,
          ),
          RowOfCircleAvatars(),
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: CustomPageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                current_page = index;
              });
            },
          )),
          SizedBox(
            height: 8,
          ),
          Center(
            child: CustomDotesDecator(currentPage: current_page),
          ),
          SizedBox(
              height: 170,
              child: Center(
                  child: Image.network(
                      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRDz7k0BcJwClWfDbJ3D5OYrKlWhiGBuvECBicnDe1TESxR6t3k'))),
        ],
      ),
    );
  }
}
