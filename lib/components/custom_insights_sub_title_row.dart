import 'package:flutter/material.dart';
import 'package:telda/pages/edit_categories_page.dart';

class CustomInsightsSubTitleRow extends StatelessWidget {
  const CustomInsightsSubTitleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, bottom: 20.0),
      child: Row(
        children: [
          Text(
            'Breakdown',
            style: TextStyle(color: Colors.blueGrey[400], fontSize: 15),
          ),
          Spacer(),
          TextButton(
              onPressed: () {
                Navigator.pushNamed(context, EditCategoriesPage.id);
              },
              child: Text(
                'Manage categories',
                style: TextStyle(color: Colors.indigoAccent, fontSize: 15),
              )),
        ],
      ),
    );
  }
}
