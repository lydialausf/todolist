import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_list/model/model.dart';
part 'add_list_event.dart';
part 'add_list_state.dart';

class AddListBloc extends Bloc<AddListEvent, AddListState> {
  AddListBloc() : super(const AddListInitial()) {
    on<GetCategory>(_getCategoryEvent);
  }

  FutureOr<void> _getCategoryEvent(
    GetCategory event,
    Emitter<AddListState> emit,
  ) {
    // TODO: Add Logic
  }
}
