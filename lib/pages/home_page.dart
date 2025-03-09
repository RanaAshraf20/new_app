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
import 'package:telda/helper/responsive.dart';

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
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.screenWidth! * 0.05,
        right: SizeConfig.screenWidth! * 0.05,
        top: SizeConfig.screenHeight! * 0.07,
      ),
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
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 4,
          ),
          CustomHideAndShowComponent(),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.03,
          ),
          RowOfCircleAvatars(),
          SizedBox(
            height: SizeConfig.screenHeight! * 0.03,
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
              height: SizeConfig.screenHeight! * 0.22,
              child: Center(
                  child: Image.network(
                      'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRDz7k0BcJwClWfDbJ3D5OYrKlWhiGBuvECBicnDe1TESxR6t3k'))),
        ],
      ),
    );
  }
}
