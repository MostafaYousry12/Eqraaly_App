import 'package:eqraaly_app/core/widgets/failure_massage.dart';
import 'package:eqraaly_app/core/widgets/loading_indicator.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:eqraaly_app/features/home/presentation/view_models/FeaturedbookCubit/featuredbook_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedbookCubit, FeaturedbookState>(
      builder: (context, state) {
        if (state is FeaturedbookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: CustomListViewItem(
                    imgLink: state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedbookFailure) {
          return FailureMassage(
            errMsg: state.errMsg,
          );
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
