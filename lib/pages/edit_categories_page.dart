import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/custom_insights_categories_tile.dart';
import 'package:telda/widgets/edit_categories_body.dart';

class EditCategoriesPage extends StatelessWidget {
  const EditCategoriesPage({super.key});
  static String id = 'EditCategoryPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withValues(alpha: 0.96),
      body: EditCategoriesBody(),
    );
  }
}
