import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/custom_list_tile_container.dart';
import 'package:telda/pages/add_new_contact.dart';

class CustomFriendAndAddContactListView extends StatelessWidget {
  const CustomFriendAndAddContactListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(padding: EdgeInsets.all(0), children: [
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, AddNewContact.id);
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: CircleAvatar(
                backgroundColor: Colors.blueAccent.withValues(alpha: 0.2),
                child: Icon(
                  FontAwesomeIcons.userPlus,
                  color: Colors.blue,
                  size: 16,
                )),
            title: Text(
              'Add a new contact',
              style: TextStyle(fontSize: 16),
            ),
            subtitle: Text(
              'To allow free and instant payments',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 35,
      ),
      CustomListTileContainer(text: 'Telda friends', itemCount: 3),
      SizedBox(
        height: 35,
      ),
    ]);
  }
}
