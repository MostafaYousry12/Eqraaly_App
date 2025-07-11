import 'package:bloc/bloc.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/search/data/repos/searchRepo.dart';
import 'package:equatable/equatable.dart';

part 'searchbooks_state.dart';

class SearchbooksCubit extends Cubit<SearchbooksState> {
  SearchbooksCubit(this.searchRepo) : super(SearchbooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String category}) async {
    emit(SearchbooksLoading());

    var results = await searchRepo.fetchSearchBooks(category: category);
    results.fold(
      (failure) {
        emit(
          SearchbooksFailure(failure.errMsg),
        );
      },
      (books) {
        emit(
          SearchbooksSuccess(books),
        );
      },
    );
  }
}
