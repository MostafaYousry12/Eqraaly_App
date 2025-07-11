import 'package:eqraaly_app/core/utils/styles.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_action.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/book_rating.dart';
import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailSection extends StatelessWidget {
  const BookDetailSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: const CustomListViewItem(
            imgLink:
                "https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fcloseup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg%3Fsemt%3Dais_hybrid%26w%3D740&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fjpg&docid=yqJqJJqv5sHd6M&tbnid=SwGkvs07DCYvoM&vet=12ahUKEwj1yN2W3rOOAxWEJ0QIHWIgA2UQM3oECGcQAA..i&w=740&h=1109&hcb=2&ved=2ahUKEwj1yN2W3rOOAxWEJ0QIHWIgA2UQM3oECGcQAA",
          ),
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
          ratingCount: 20,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 15,
        ),
        const BookAction(),
      ],
    );
  }
}
