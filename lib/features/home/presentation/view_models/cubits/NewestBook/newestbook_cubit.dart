import 'package:bloc/bloc.dart';
import 'package:eqraaly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'newestbook_state.dart';

class NewestbookCubit extends Cubit<NewestbookState> {
  NewestbookCubit() : super(NewestbookInitial());
}
