part of 'newestbook_cubit.dart';

sealed class NewestbookState extends Equatable {
  const NewestbookState();

  @override
  List<Object> get props => [];
}

final class NewestbookInitial extends NewestbookState {}

final class NewestbookLoading extends NewestbookState {}

final class NewestbookSuccess extends NewestbookState {
  final List<BookModel> books;

  const NewestbookSuccess(this.books);
}

final class NewestbookFailure extends NewestbookState {
  final String errMsg;

  const NewestbookFailure(this.errMsg);
}
