import 'package:eqraaly_app/constants.dart';
import 'package:eqraaly_app/core/utils/assets.dart';
import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/best_seller_list_view.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: kEdgeInsets,
                  child: CustomAppBar(),
                ),
                CustomListView(),
                Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 8),
                  child: Padding(
                    padding: kEdgeInsets,
                    child: Text(
                      "Best Seller",
                      style: Styles.textStyle18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            child: Padding(
              padding: kEdgeInsets,
              child: BestSellerListView(),
            ),
          )
        ],
      ),
    );
  }
}
