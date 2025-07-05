import 'package:eqraaly_app/features/home/presentation/view/widgets/app_bar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          AppBarWidget(),
        ],
      ),
    );
  }
}
