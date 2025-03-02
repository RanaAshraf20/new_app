import 'dart:ui';

import 'package:flutter/material.dart';

class CustomContactListTile extends StatelessWidget {
  const CustomContactListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.grey.withValues(alpha: 0.1),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                )),
            title: Text(
              'Omar Mostafa',
              style: TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              '+201033215895',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          );
        },
      ),
    );
  }
}
