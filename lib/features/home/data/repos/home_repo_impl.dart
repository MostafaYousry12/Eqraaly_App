import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:eqraaly_app/core/errors/failure.dart';
import 'package:eqraaly_app/core/utils/api_services.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImpl(this.apiServices);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await apiServices.get(
          endpoint: "volumes?filter=free-ebooks&q=Programming&orderBy=newest");

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data =
          await apiServices.get(endpoint: "volumes?filter=free-ebooks&q=Money");

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiServices.get(
          endpoint: "volumes?filter=free-ebooks&orderBy=relevance&q=animal");

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
