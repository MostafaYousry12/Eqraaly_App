import 'package:dartz/dartz.dart';
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
          endpoint: "volumes?filter=free-ebooks&q=programming&orderBy=newest");

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
