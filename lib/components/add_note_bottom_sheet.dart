import 'package:flutter/material.dart';
import 'package:telda/components/bottom_sheet_container.dart';
import 'package:telda/components/row_of_circle_avatars.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 55,
              height: 3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.black26),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Select how to add money to your Telda account',
                style: TextStyle(fontSize: 22),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            BottomSheetContainer(
              text: 'Use a Debit/Credit card',
              widget: Icon(
                Icons.payment,
                color: Colors.black,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              text: 'Receive InstaPay transfers',
              isColor: false,
              image: NetworkImage(
                  'https://play-lh.googleusercontent.com/Pv1p8v-KJq4Z_LLOjQjBZpK8DNJg4Zb5aNOQY7WfoiHR4Gfs165Z1TTNMThZ883Yfg'),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              text: 'Receive bank transfers',
              widget: Icon(
                Icons.account_balance,
                color: Colors.black,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              text: 'Add cash through ATM',
              widget: Icon(
                Icons.point_of_sale,
                color: Colors.black,
                size: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            BottomSheetContainer(
              isColor: false,
              text: 'Add cash through Fawry',
              image: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRiglU713dEokC-07PLp7eioOfrRDOnKAFSw&s'),
            ),
          ],
        ),
      ),
    );
  }
}
