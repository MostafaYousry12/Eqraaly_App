import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/core/widgets/failure_massage.dart';
import 'package:eqraaly_app/core/widgets/loading_indicator.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:eqraaly_app/features/search/presentation/view_models/cubit/searchbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchbooksCubit, SearchbooksState>(
      builder: (context, state) {
        if (state is SearchbooksSuccess) {
          if (state.books.isEmpty) {
            return const Center(
              child: Text(
                "No books found for your search",
                style: Styles.textStyle18,
              ),
            );
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(bookModel: state.books[index]),
              );
            },
          );
        } else if (state is SearchbooksFailure) {
          return FailureMassage(errMsg: state.errMsg);
        } else if (state is SearchbooksLoading) {
          return const LoadingIndicator();
        } else {
          // Initial state - show a message to start searching
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.search,
                  size: 64,
                  color: Colors.grey,
                ),
                SizedBox(height: 16),
                Text(
                  "Start typing to search for books",
                  style: Styles.textStyle18,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
