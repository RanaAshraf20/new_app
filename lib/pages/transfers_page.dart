import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/custom_button.dart';
import 'package:telda/components/custom_elevation_buttom.dart';
import 'package:telda/components/custom_new_transfer_all_list_view.dart';
import 'package:telda/components/custom_search_container.dart';
import 'package:telda/components/custom_transfers_app_bar.dart';
import 'package:telda/components/custom_transfers_card.dart';
import 'package:telda/pages/new_trasfer_page.dart';

class TransfersPage extends StatelessWidget {
  const TransfersPage({super.key});
  static String id = 'TransfersPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(right: 16.0, left: 16, top: 40),
        child: ListView(
          children: [
            CustomTransfersAppBar(),
            SizedBox(
              height: 20,
            ),
            CustomSearchContainer(),
            CustomTransfersCard(onPressed: () {
              Navigator.pushNamed(context, NewTrasferPage.id);
            }),
            SizedBox(
              height: 40,
            ),
            CustomListTileContainer(text: 'Telda friends', itemCount: 3),
            SizedBox(
              height: 20,
            ),
            CustomListTileContainer(text: 'Other', itemCount: 10)
          ],
        ),
      ),
    );
  }
}
