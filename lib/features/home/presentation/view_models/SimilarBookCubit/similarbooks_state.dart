part of 'similarbooks_cubit.dart';

sealed class SimilarbooksState extends Equatable {
  const SimilarbooksState();

  @override
  List<Object> get props => [];
}

final class SimilarbooksInitial extends SimilarbooksState {}

final class SimilarbooksSuccess extends SimilarbooksState {
  final List<BookModel> books;

  const SimilarbooksSuccess(this.books);
}

final class SimilarbooksFailure extends SimilarbooksState {
  final String errMsg;

  const SimilarbooksFailure(this.errMsg);
}

final class SimilarbooksLoading extends SimilarbooksState {}
