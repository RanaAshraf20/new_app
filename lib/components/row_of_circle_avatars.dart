import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telda/components/add_note_bottom_sheet.dart';
import 'package:telda/components/custom_circle_avatar.dart';
import 'package:telda/components/custom_circle_avatar_with_border.dart';
import 'package:telda/pages/insights_page.dart';
import 'package:telda/pages/transfers_page.dart';

class RowOfCircleAvatars extends StatelessWidget {
  const RowOfCircleAvatars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomCircleAvatar(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: Colors.white.withValues(alpha: 0.96),
                  isScrollControlled: true,
                  useSafeArea: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  context: context,
                  builder: (context) {
                    return AddNoteBottomSheet();
                  });
            },
            backgoundColor: Colors.black,
            icon: FontAwesomeIcons.plus,
            iconColor: Colors.white,
            text: 'Add money'),
        CustomCircleAvatar(
          onTap: () {
            Navigator.pushNamed(context, TransfersPage.id);
          },
          backgoundColor: Colors.blueGrey.withValues(alpha: 0.1),
          icon: FontAwesomeIcons.arrowRight,
          iconColor: Colors.black,
          text: 'Send money',
        ),
        CustomCircleAvatarWithBorder(
            onTap: () {
              Navigator.pushNamed(context, InsightsPage.id);
            },
            backgoundColor: Colors.white,
            icon: Icons.insights,
            iconColor: Colors.black,
            text: 'Insights',
            borderColor: Colors.blueGrey.withValues(alpha: 0.2)),
      ],
    );
  }
}
