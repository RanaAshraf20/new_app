import 'dart:ui';

import 'package:flutter/material.dart';

class CustomNewFriendListTile extends StatelessWidget {
  const CustomNewFriendListTile({
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
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.grey.withValues(alpha: 0.1),
          child: Text(
            '~',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        title: Text('Telda friend'),
      ),
    );
  }
}
