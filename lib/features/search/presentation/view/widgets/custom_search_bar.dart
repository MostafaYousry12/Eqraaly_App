import 'package:eqraaly_app/features/search/presentation/view_models/cubit/searchbooks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchTextField extends StatelessWidget {
  CustomSearchTextField({super.key});
  var text = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: text,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "Search",
        suffixIcon: IconButton(
          icon: const Opacity(opacity: 0.8, child: Icon(Icons.search)),
          onPressed: () {
            if (text.text != "") {
              BlocProvider.of<SearchbooksCubit>(context)
                  .fetchSearchBooks(category: text.text);
            }
          },
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
