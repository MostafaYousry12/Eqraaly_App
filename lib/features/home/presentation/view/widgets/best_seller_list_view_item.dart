import 'package:eqraaly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 125,
          child: AspectRatio(
            aspectRatio: 2.6 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
