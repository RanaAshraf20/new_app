import 'package:flutter/material.dart';
import 'package:telda/components/custom_contact_list_tile.dart';
import 'package:telda/components/custom_new_friend_list_tile.dart';

class CustomNewTransfersAllListView extends StatelessWidget {
  const CustomNewTransfersAllListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(0),
      children: [
        Text(
          'Add New',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CustomNewFriendListTile(),
        SizedBox(
          height: 40,
        ),
        Text(
          'Telda friends',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        CustomContactListTile()
      ],
    );
  }
}
