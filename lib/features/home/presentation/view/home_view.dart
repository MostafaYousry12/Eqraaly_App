import 'package:eqraaly_app/core/utils/assets.dart';
import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_app_bar.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            CustomListView(),
            Padding(
              padding: EdgeInsets.only(top: 32, bottom: 8),
              child: Text(
                "Best Seller",
                style: Styles.textStyle18,
              ),
            ),
            BestSellerListViewItem(),
          ],
        ),
      ),
    );
  }
}
