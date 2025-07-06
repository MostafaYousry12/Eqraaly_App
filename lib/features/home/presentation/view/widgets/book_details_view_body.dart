import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/core/widgets/custom_buttom.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_detail_view_app_bar.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomDetailViewAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomListViewItem(),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "The Jungle Book",
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kiping",
              style: Styles.textStyle14.copyWith(fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 15,
          ),
          const BookAction(),
        ],
      ),
    );
  }
}

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButtom(
            text: "19.99 €",
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            fontSize: 18,
            backgroundColor: Colors.white,
            textColor: Colors.black,
          ),
        ),
        Expanded(
          child: CustomButtom(
            text: "Free Preview",
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            fontSize: 14,
            backgroundColor: const Color(0xffEF8262).withOpacity(.9),
            textColor: Colors.white,
          ),
        ),
      ],
    );
  }
}
