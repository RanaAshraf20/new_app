import 'package:flutter/material.dart';
import 'package:telda/components/custom_contact_list_tile.dart';
import 'package:telda/components/custom_list_tile_container.dart';
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
        CustomAddNewListTile(
          text: 'Telda friend',
          circleAvatarColor: Colors.grey.withValues(alpha: 0.1),
        ),
        SizedBox(
          height: 30,
        ),
        CustomListTileContainer(text: 'Telda friends', itemCount: 3),
        SizedBox(
          height: 30,
        ),
        CustomListTileContainer(text: 'Other', itemCount: 10)
      ],
    );
  }
}
