import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:telda/pages/edit_categories_page.dart';
import 'package:telda/widgets/edit_categories_first_container.dart';
import 'package:telda/widgets/edit_categories_second_container.dart';

class EditCategoriesBody extends StatelessWidget {
  const EditCategoriesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          'Edit Ctegories',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child:
              ListView(padding: EdgeInsets.symmetric(vertical: 10), children: [
            Text(
              'Custom categories',
              style: TextStyle(fontSize: 16, color: Colors.black45),
            ),
            SizedBox(
              height: 15,
            ),
            EditCategoriesFirstContainer(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Default categories',
              style: TextStyle(fontSize: 16, color: Colors.black45),
            ),
            SizedBox(
              height: 15,
            ),
            EditCategoriesSecontContainer(),
          ]),
        ),
      ]),
    );
  }
}
