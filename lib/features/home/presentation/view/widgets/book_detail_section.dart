import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_action.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomListViewItem(
            imgLink: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle18,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            maxLines: 1,
            (bookModel.volumeInfo.authors != null &&
                    bookModel.volumeInfo.authors!.isNotEmpty)
                ? bookModel.volumeInfo.authors![0]
                : "Unknown Author",
            style: Styles.textStyle14.copyWith(fontStyle: FontStyle.italic),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        BookRating(
          ratingCount: bookModel.volumeInfo.pageCount!,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        BookAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
