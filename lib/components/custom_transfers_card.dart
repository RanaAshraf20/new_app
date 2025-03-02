import 'package:flutter/material.dart';

class CustomTransfersCard extends StatelessWidget {
  CustomTransfersCard({super.key, this.onPressed});
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade100.withValues(alpha: 0.7),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
                child: Image.network(
                    'https://howtodrawforkids.com/wp-content/uploads/2022/07/how-to-draw-a-paper-airplane.jpg'),
              ),
              Text(
                'Send your first tansfer!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                  textAlign: TextAlign.center,
                  'Create a new beneficiary or search for a contant in your phonebook.',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff92A0A2),
                  )),
              SizedBox(
                height: 18,
              ),
              TextButton(
                  onPressed: onPressed,
                  child: Text('Get Started',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
