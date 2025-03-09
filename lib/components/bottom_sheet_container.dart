import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/pages/bottom_sheet_page.dart';

class BottomSheetContainer extends StatelessWidget {
  BottomSheetContainer({
    super.key,
    required this.text,
    this.widget,
    this.image,
    this.isColor = true,
  });
  final String text;
  ImageProvider<Object>? image;
  Widget? widget;
  bool? isColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BottomSheetPage.id);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: isColor!
              ? CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black12.withValues(alpha: 0.06),
                  child: widget)
              : CircleAvatar(
                  radius: 25,
                  backgroundImage: image,
                  backgroundColor: Colors.white,
                ),
          title: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
          subtitle: Row(
            children: [
              Icon(Icons.bolt, size: 16, color: Colors.indigoAccent),
              SizedBox(
                width: 5,
              ),
              Text(
                'Instant',
                style: TextStyle(color: Colors.indigoAccent),
              )
            ],
          ),
          trailing: Icon(
            FontAwesomeIcons.angleRight,
            size: 18,
            color: Colors.black45,
          ),
        ),
      ),
    );
  }
}
