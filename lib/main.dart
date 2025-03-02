import 'package:flutter/material.dart';
import 'package:telda/pages/main_home_page.dart';
import 'package:telda/pages/new_trasfer_page.dart';
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
      NewTrasferPage.id: (context) => NewTrasferPage()
    }, debugShowCheckedModeBanner: false, home: MainHomePage());
  }
}
