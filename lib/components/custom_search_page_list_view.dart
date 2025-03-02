import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/custom_list_tile_container.dart';
import 'package:telda/components/custom_new_friend_list_tile.dart';

class CustomSearchPageListView extends StatelessWidget {
  const CustomSearchPageListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(0), children: [
      CustomAddNewListTile(
        onTap: () {},
        isText: false,
        text: 'Add new recipient',
        circleAvatarColor: Colors.blueAccent.withValues(alpha: 0.2),
        icon: FontAwesomeIcons.plus,
        iconColor: Colors.blue,
      ),
      SizedBox(
        height: 35,
      ),
      CustomListTileContainer(text: 'Telda friends', itemCount: 3),
      SizedBox(
        height: 35,
      ),
      CustomListTileContainer(text: 'Other', itemCount: 10)
    ]);
  }
}
