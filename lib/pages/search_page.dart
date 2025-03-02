import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/search_page_search_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({
    super.key,
  });
  static String id = 'SearchPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: 0.97),
      body: Padding(
        padding: const EdgeInsets.only(top: 60.0, left: 15, right: 15),
        child: SearchPageSearchBar(),
      ),
    );
  }
}
