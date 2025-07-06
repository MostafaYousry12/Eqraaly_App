import 'package:eqraaly_app/features/home/presentation/view/book_details_view.dart';
import 'package:eqraaly_app/features/home/presentation/view/home_view.dart';
import 'package:eqraaly_app/features/search/presentation/view/search_view.dart';
import 'package:eqraaly_app/features/splash/presentation/view/splash_view.dart';
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
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}
