import 'package:bloc/bloc.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:eqraaly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featuredbook_state.dart';

class FeaturedbookCubit extends Cubit<FeaturedbookState> {
  FeaturedbookCubit(this.homeRepo) : super(FeaturedbookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedbookLoading());

    var results = await homeRepo.fetchFeaturedBooks();
    results.fold((failure) {
      emit(
        FeaturedbookFailure(failure.errMsg),
      );
    }, (books) {
      emit(
        FeaturedbookSuccess(books),
      );
    });
  }
}
