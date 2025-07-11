import 'package:eqraaly_app/core/utils/url_launcher.dart';
import 'package:eqraaly_app/core/widgets/custom_buttom.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomButtom(
            text: "Free",
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
            onPressed: () {
              Uriluncher(bookModel.volumeInfo.previewLink!);
            },
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
