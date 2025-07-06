import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(
          onPressed: () {},
          icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 24),
        ),
        focusedBorder: inputoutlineinputborder(),
        enabledBorder: inputoutlineinputborder(),
      ),
    );
  }

  OutlineInputBorder inputoutlineinputborder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
