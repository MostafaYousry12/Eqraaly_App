import 'package:bloc/bloc.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newestbook_state.dart';

class NewestbookCubit extends Cubit<NewestbookState> {
  NewestbookCubit(this.homeRepo) : super(NewestbookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewestbookLoading());

    var results = await homeRepo.fetchBestSellerBooks();
    results.fold(
      (failure) {
        emit(
          NewestbookFailure(failure.errMsg),
        );
      },
      (books) {
        emit(
          NewestbookSuccess(books),
        );
      },
    );
  }
}
