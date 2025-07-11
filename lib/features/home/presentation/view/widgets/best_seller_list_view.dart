import 'package:eqraaly_app/core/widgets/failure_massage.dart';
import 'package:eqraaly_app/core/widgets/loading_indicator.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/best_seller_list_view_item.dart';
import 'package:eqraaly_app/features/home/presentation/view_models/NewestBookCubit/newestbook_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestbookCubit, NewestbookState>(
      builder: (context, state) {
        if (state is NewestbookSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                  child: BestSellerListViewItem(
                    bookModel: state.books[index],
                  ),
                );
              },
              childCount: state.books.length,
            ),
          );
        } else if (state is NewestbookFailure) {
          return SliverToBoxAdapter(
            child: FailureMassage(errMsg: state.errMsg),
          );
        } else {
          return const SliverToBoxAdapter(
            child: LoadingIndicator(),
          );
        }
      },
    );
  }
}
