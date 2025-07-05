import 'package:flutter/material.dart';

class SingleText extends StatelessWidget {
  const SingleText({
    super.key,
    required this.slideanimation,
  });

  final Animation<Offset> slideanimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slideanimation,
      builder: (context, _) {
        return SlideTransition(
          position: slideanimation,
          child: const Text(
            "Reading Made it Personal",
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
