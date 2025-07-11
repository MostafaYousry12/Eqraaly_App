import 'package:eqraaly_app/core/errors/failure.dart';
import 'package:eqraaly_app/core/widgets/failure_massage.dart';
import 'package:eqraaly_app/core/widgets/loading_indicator.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:eqraaly_app/features/home/presentation/view_models/cubit/similarbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsBodyListView extends StatelessWidget {
  const DetailsBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarbooksCubit, SimilarbooksState>(
      builder: (context, state) {
        if (state is SimilarbooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: CustomListViewItem(
                    imgLink: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarbooksFailure) {
          return FailureMassage(errMsg: state.errMsg);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
