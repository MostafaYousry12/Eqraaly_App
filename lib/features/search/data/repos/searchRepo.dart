import 'package:dartz/dartz.dart';
import 'package:eqraaly_app/core/errors/failure.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(
      {required String category});
}
