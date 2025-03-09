import 'package:flutter/material.dart';

class EditCategoriesFirstContainer extends StatelessWidget {
  const EditCategoriesFirstContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: Colors.white),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.import_contacts),
              ),
              title: Text('Work'),
              trailing: IntrinsicWidth(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.indigoAccent,
                      size: 14,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Edit',
                      style:
                          TextStyle(color: Colors.indigoAccent, fontSize: 14),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.add),
              ),
              title: Text('Add category'),
            )
          ],
        ));
  }
}
