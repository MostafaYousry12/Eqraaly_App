import 'package:flutter/material.dart';

class CustomDetailViewAppBar extends StatelessWidget {
  const CustomDetailViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_checkout_outlined)),
      ],
    );
  }
}
