import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/custom_contact_list_tile.dart';
import 'package:telda/components/custom_friend_and_add_contact_list_view.dart';
import 'package:telda/components/custom_friend_container.dart';
import 'package:telda/components/custom_list_tile_container.dart';
import 'package:telda/components/custom_new_friend_list_tile.dart';
import 'package:telda/components/custom_search_page_list_view.dart';
import 'package:telda/components/search_page_search_bar.dart';
import 'package:telda/pages/add_new_contact.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({
    super.key,
  });
  static String id = 'SearchPage';

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool isPressed = true;
  Color containerFriendColor = Colors.blueGrey.shade100.withValues(alpha: 0.4);
  Color textColor = Color(0xff92A0A2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: 0.97),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchPageSearchBar(),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  setState(() {
                    containerFriendColor = isPressed
                        ? Colors.black
                        : Colors.blueGrey.shade100.withValues(alpha: 0.4);

                    textColor = isPressed ? Colors.white : Color(0xff92A0A2);
                    isPressed = !isPressed;
                  });
                },
                child: CustomFriendContainer(
                  containerColor: containerFriendColor,
                  textColor: textColor,
                )),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child: isPressed
                    ? CustomSearchPageListView()
                    : CustomFriendAndAddContactListView()),
          ],
        ),
      ),
    );
  }
}
