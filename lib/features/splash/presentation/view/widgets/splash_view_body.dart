import 'package:eqraaly_app/core/utils/assets.dart';
import 'package:eqraaly_app/features/home/presentation/view/home_view.dart';
import 'package:eqraaly_app/features/splash/presentation/view/widgets/single_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideanimation;
  @override
  void initState() {
    super.initState();
    initSlideAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          width: 75,
          height: 75,
          AssetsData.logo,
        ),
        SingleText(slideanimation: slideanimation),
      ],
    );
  }

  void initSlideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    slideanimation = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to((() => const HomeView()), transition: Transition.fade);
    });
  }
}
