import 'package:flutter/material.dart';
import 'package:telda/components/custom_card.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key, this.controller, this.onPageChanged});
  void Function(int)? onPageChanged;
  PageController? controller;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: [
        CustomCard(
          buttonColor: Colors.black,
          cardColor: Colors.grey.shade100,
          title: 'Get your card now',
          subtitle:
              'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected',
          image:
              'https://static.zawya.com/view/acePublic/alias/contentid/YmUwMWU5YzItNzJiMy00/0/mdp_teldasquare-jpg.webp?f=3%3A2&q=0.75&w=750',
          buttonText: 'Get Card',
        ),
        CustomCard(
          textButtonColor: const Color.fromARGB(255, 3, 86, 251),
          dismiss: true,
          cardColor:
              const Color.fromARGB(255, 3, 86, 251).withValues(alpha: 0.2),
          title: 'Get your card now',
          subtitle:
              'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected',
          image:
              'https://static.zawya.com/view/acePublic/alias/contentid/YmUwMWU5YzItNzJiMy00/0/mdp_teldasquare-jpg.webp?f=3%3A2&q=0.75&w=750',
          buttonText: 'Add',
          buttonColor: const Color.fromARGB(255, 3, 86, 251),
        ),
        CustomCard(
          dismiss: true,
          cardColor: Colors.grey.shade100,
          buttonText: 'Add',
          title: 'Get your card now',
          subtitle:
              'Get your favorite Telda card! Pay online or in-store and enjoy the various benefits of your selected',
          image:
              'https://static.zawya.com/view/acePublic/alias/contentid/YmUwMWU5YzItNzJiMy00/0/mdp_teldasquare-jpg.webp?f=3%3A2&q=0.75&w=750',
          buttonColor: Colors.black,
          textButtonColor: Colors.black,
        )
      ],
    );
  }
}
