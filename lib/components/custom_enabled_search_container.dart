import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomEnabledSearchContainer extends StatelessWidget {
  const CustomEnabledSearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade100.withValues(alpha: 0.4),
          borderRadius: BorderRadius.circular(28)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Name, @username, Phone',
          hintStyle: TextStyle(
              color: Color(
                0xff92A0A2,
              ),
              fontSize: 14),
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Color(0xff92A0A2),
            size: 14,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: Colors.blueGrey.shade100.withValues(alpha: 0.4),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: BorderSide(
              color: Colors.blueGrey.shade100.withValues(alpha: 0.4),
            ),
          ),
        ),
      ),
    );
  }
}
