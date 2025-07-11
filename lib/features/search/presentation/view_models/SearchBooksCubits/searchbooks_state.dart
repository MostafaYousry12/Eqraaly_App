part of 'searchbooks_cubit.dart';

sealed class SearchbooksState extends Equatable {
  const SearchbooksState();

  @override
  List<Object> get props => [];
}

final class SearchbooksInitial extends SearchbooksState {}

final class SearchbooksSuccess extends SearchbooksState {
  final List<BookModel> books;

  const SearchbooksSuccess(this.books);
}

final class SearchbooksFailure extends SearchbooksState {
  final String errMsg;

  const SearchbooksFailure(this.errMsg);
}

final class SearchbooksLoading extends SearchbooksState {}
