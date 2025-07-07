part of 'featuredbook_cubit.dart';

sealed class FeaturedbookState extends Equatable {
  const FeaturedbookState();

  @override
  List<Object> get props => [];
}

final class FeaturedbookInitial extends FeaturedbookState {}

final class FeaturedbookLoading extends FeaturedbookState {}

final class FeaturedbookFailure extends FeaturedbookState {
  final String errMsg;

  const FeaturedbookFailure(this.errMsg);
}

final class FeaturedbookSuccess extends FeaturedbookState {
  final List<BookModel> books;

  const FeaturedbookSuccess(this.books);
}
