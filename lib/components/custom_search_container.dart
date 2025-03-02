import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/pages/search_page.dart';

class CustomSearchContainer extends StatelessWidget {
  const CustomSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, SearchPage.id);
      },
      child: Container(
        padding: EdgeInsets.only(left: 20),
        height: 45,
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade100.withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(28)),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Color(0xff92A0A2),
              size: 14,
            ),
            SizedBox(
              width: 13,
            ),
            Text(
              'Name, @username, mobile number',
              style: TextStyle(
                  color: Color(
                    0xff92A0A2,
                  ),
                  fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
