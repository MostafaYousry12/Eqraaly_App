import 'package:bloc/bloc.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similarbooks_state.dart';

class SimilarbooksCubit extends Cubit<SimilarbooksState> {
  SimilarbooksCubit(this.homeRepo) : super(SimilarbooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required category}) async {
    emit(SimilarbooksLoading());

    var results = await homeRepo.fetchBestSellerBooks();
    results.fold(
      (failure) {
        emit(
          SimilarbooksFailure(failure.errMsg),
        );
      },
      (books) {
        emit(
          SimilarbooksSuccess(books),
        );
      },
    );
  }
}
