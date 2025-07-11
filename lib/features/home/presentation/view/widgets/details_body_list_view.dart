import 'package:eqraaly_app/features/home/presentation/view/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class DetailsBodyListView extends StatelessWidget {
  const DetailsBodyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomListViewItem(
              imgLink:
                  "https://www.google.com/imgres?q=image&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-photo%2Fcloseup-scarlet-macaw-from-side-view-scarlet-macaw-closeup-head_488145-3540.jpg%3Fsemt%3Dais_hybrid%26w%3D740&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fjpg&docid=yqJqJJqv5sHd6M&tbnid=SwGkvs07DCYvoM&vet=12ahUKEwj1yN2W3rOOAxWEJ0QIHWIgA2UQM3oECGcQAA..i&w=740&h=1109&hcb=2&ved=2ahUKEwj1yN2W3rOOAxWEJ0QIHWIgA2UQM3oECGcQAA",
            ),
          );
        },
      ),
    );
  }
}
