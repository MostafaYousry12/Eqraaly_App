import 'package:eqraaly_app/core/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButtom(
            text: "19.99 €",
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            fontSize: 18,
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButtom(
            text: "Free Preview",
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            fontSize: 14,
            backgroundColor: const Color(0xffEF8262).withOpacity(.9),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
