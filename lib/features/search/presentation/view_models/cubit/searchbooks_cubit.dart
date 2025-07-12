import 'package:bloc/bloc.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/search/data/repos/searchRepo.dart';
import 'package:equatable/equatable.dart';
import 'dart:async';

part 'searchbooks_state.dart';

class SearchbooksCubit extends Cubit<SearchbooksState> {
  SearchbooksCubit(this.searchRepo) : super(SearchbooksInitial());

  final SearchRepo searchRepo;
  Timer? _debounceTimer;

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

  // New method for real-time search with debouncing
  void searchBooks({required String query}) {
    // Cancel previous timer if it exists
    _debounceTimer?.cancel();
    
    // If query is empty, show initial state
    if (query.trim().isEmpty) {
      emit(SearchbooksInitial());
      return;
    }

    // Set a timer to debounce the search
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      fetchSearchBooks(category: query.trim());
    });
  }

  @override
  Future<void> close() {
    _debounceTimer?.cancel();
    return super.close();
  }
}
