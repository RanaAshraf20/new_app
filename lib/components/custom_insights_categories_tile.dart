import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomInsightsCategoriesTile extends StatelessWidget {
  const CustomInsightsCategoriesTile({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(bottom: 14),
      leading: CircleAvatar(child: Icon(icon)),
      title: Text(
        text,
        style: TextStyle(fontSize: 16),
      ),
      trailing: Icon(
        FontAwesomeIcons.angleRight,
        size: 16,
      ),
    );
  }
}
