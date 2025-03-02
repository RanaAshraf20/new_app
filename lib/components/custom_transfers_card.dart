import 'package:flutter/material.dart';

class CustomTransfersCard extends StatelessWidget {
  CustomTransfersCard({super.key, this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
                child: Image.network(
                    'https://howtodrawforkids.com/wp-content/uploads/2022/07/how-to-draw-a-paper-airplane.jpg'),
              ),
              Text(
                'Send your first tansfer!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                  textAlign: TextAlign.center,
                  'Create a new beneficiary or search for a contant in your phonebook.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff92A0A2),
                  )),
              SizedBox(
                height: 14,
              ),
              TextButton(
                  onPressed: onPressed,
                  child: Text('Get Started',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.blue,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
