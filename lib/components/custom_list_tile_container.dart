import 'package:flutter/material.dart';
import 'package:telda/components/custom_contact_list_tile.dart';

class CustomListTileContainer extends StatelessWidget {
  const CustomListTileContainer(
      {super.key, required this.text, required this.itemCount});
  final String text;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        CustomContactListTile(
          itemCount: itemCount,
        ),
      ],
    );
  }
}
