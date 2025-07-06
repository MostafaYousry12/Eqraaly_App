import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/details_body_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailListViewSection extends StatelessWidget {
  const BookDetailListViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "You Can also Like",
            style: Styles.textStyle16,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        DetailsBodyListView(),
      ],
    );
  }
}
