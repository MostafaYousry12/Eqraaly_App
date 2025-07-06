import 'package:dartz/dartz.dart';
import 'package:eqraaly_app/core/errors/failure.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
