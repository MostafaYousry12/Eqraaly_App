import 'package:eqraaly_app/features/search/presentation/view/widgets/custom_search_bar.dart';
import 'package:eqraaly_app/features/search/presentation/view/widgets/search_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 24, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          CustomSearchTextField(),
          const SizedBox(
            height: 16,
          ),
          const Expanded(child: SearchListView()),
        ],
      ),
    );
  }
}
