import 'package:dio/dio.dart';
import 'package:eqraaly_app/core/utils/api_services.dart';
import 'package:eqraaly_app/core/utils/service_locator.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:eqraaly_app/features/home/presentation/view/book_details_view.dart';
import 'package:eqraaly_app/features/home/presentation/view/home_view.dart';
import 'package:eqraaly_app/features/home/presentation/view_models/cubit/similarbooks_cubit.dart';
import 'package:eqraaly_app/features/search/data/repos/searchRepoImpl.dart';
import 'package:eqraaly_app/features/search/presentation/view/search_view.dart';
import 'package:eqraaly_app/features/search/presentation/view_models/cubit/searchbooks_cubit.dart';
import 'package:eqraaly_app/features/splash/presentation/view/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRouters.kSearchView,
        builder: (context, state) => BlocProvider(
          create: (context) => SearchbooksCubit(
            Searchrepoimpl(ApiServices(Dio())),
          ),
          child: const SearchView(),
        ),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarbooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
