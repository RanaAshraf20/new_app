import 'package:flutter/material.dart';
import 'package:telda/pages/edit_categories_page.dart';

import 'package:telda/pages/insights_page.dart';

import 'package:telda/pages/main_home_page.dart';
import 'package:telda/pages/new_trasfer_page.dart';
import 'package:telda/pages/search_page.dart';
import 'package:telda/pages/transfers_page.dart';

void main() {
  runApp(const TeldaApp());
}

class TeldaApp extends StatelessWidget {
  const TeldaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(routes: {
      TransfersPage.id: (context) => TransfersPage(),
      NewTrasferPage.id: (context) => NewTrasferPage(),
      SearchPage.id: (context) => SearchPage(),
      InsightsPage.id: (context) => InsightsPage(),
      EditCategoriesPage.id: (context) => EditCategoriesPage(),
    }, debugShowCheckedModeBanner: false, home: MainHomePage());
  }
}
