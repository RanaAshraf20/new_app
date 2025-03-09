import 'package:flutter/material.dart';
import 'package:telda/components/close_icon.dart';
import 'package:telda/components/custom_new_transfer_all_list_view.dart';
import 'package:telda/components/custom_search_container.dart';

class NewTrasferPage extends StatelessWidget {
  const NewTrasferPage({super.key});
  static String id = 'NewTrasfer';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: 0.97),
      body: Padding(
        padding:
            const EdgeInsets.only(right: 20.0, left: 20, top: 50, bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CloseIcon(
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'New Transfer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 14,
            ),
            CustomSearchContainer(),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: CustomNewTransfersAllListView(),
            )
          ],
        ),
      ),
    );
  }
}
