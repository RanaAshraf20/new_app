import 'dart:ui';

import 'package:flutter/material.dart';

class CustomContactListTile extends StatelessWidget {
  const CustomContactListTile({
    super.key,
    required this.itemCount,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.builder(
        itemCount: itemCount,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.all(0),
        itemBuilder: (BuildContext context, int index) {
          return CustomThreeListTile(
            icon: Icons.person,
            iconColor: Colors.black,
            title: 'Omar Mostafa',
            subTitle: '+201022557725',
            circleAvatarColor: Colors.grey.withValues(alpha: 0.1),
          );
        },
      ),
    );
  }
}

class CustomThreeListTile extends StatelessWidget {
  const CustomThreeListTile({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.title,
    required this.subTitle,
    required this.circleAvatarColor,
  });
  final IconData icon;
  final Color iconColor;
  final String title;
  final String subTitle;
  final Color circleAvatarColor;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: circleAvatarColor,
          child: Icon(
            icon,
            color: iconColor,
          )),
      title: Text(
        title,
        style: TextStyle(fontSize: 18),
      ),
      subtitle: Text(
        subTitle,
        style: TextStyle(fontSize: 16, color: Colors.grey),
      ),
    );
  }
}
