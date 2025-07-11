import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:eqraaly_app/features/search/presentation/view/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchBar(),
          SizedBox(
            height: 10,
          ),
          Text(
            "Search Results",
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: SearchListView(),
          ),
        ],
      ),
    );
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          // child: BestSellerListViewItem(),
          child: Text("sadjsjd"),
        );
      },
    );
  }
}
