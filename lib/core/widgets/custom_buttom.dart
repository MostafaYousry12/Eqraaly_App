import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      this.fontSize,
      required this.borderRadius,
      this.backgroundColor,
      this.textColor,
      required this.text});
  final BorderRadius borderRadius;
  final double? fontSize;
  final Color? backgroundColor;
  final Color? textColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            )),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
