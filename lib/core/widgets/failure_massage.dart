import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class FailureMassage extends StatelessWidget {
  const FailureMassage({super.key, required this.errMsg});

  final String errMsg;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMsg,
      style: Styles.textStyle18,
    );
  }
}
