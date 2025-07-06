import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/core/widgets/custom_buttom.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_action.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_detail_list_view_section.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_detail_section.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_detail_view_app_bar.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/details_body_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomDetailViewAppBar(),
                BookDetailSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                BookDetailListViewSection(),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
