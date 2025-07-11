import 'package:eqraaly_app/constants.dart';
import 'package:eqraaly_app/core/utils/app_routers.dart';
import 'package:eqraaly_app/core/utils/service_locator.dart';
import 'package:eqraaly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:eqraaly_app/features/home/presentation/view_models/FeaturedbookCubit/featuredbook_cubit.dart';
import 'package:eqraaly_app/features/home/presentation/view_models/NewestBookCubit/newestbook_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const EqraalyApp());
}

class EqraalyApp extends StatelessWidget {
  const EqraalyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedbookCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewestbookCubit(
            getIt.get<HomeRepoImpl>(),
          )..fetchFeaturedBooks(),
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouters.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
