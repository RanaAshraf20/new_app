import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:telda/components/custom_enabled_search_container.dart';
import 'package:telda/pages/search_page.dart';

class SearchPageSearchBar extends StatelessWidget {
  const SearchPageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomEnabledSearchContainer(),
        ),
        SizedBox(
          width: 6,
        ),
        TextButton(
          child: Text(
            'Cancle',
            style: TextStyle(color: Colors.blueAccent, fontSize: 16),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        )
      ],
    );
  }
}
