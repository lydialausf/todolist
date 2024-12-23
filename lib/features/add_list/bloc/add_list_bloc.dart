import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'add_list_event.dart';
part 'add_list_state.dart';

class AddListBloc extends Bloc<AddListEvent, AddListState> {
  AddListBloc() : super(const AddListInitial()) {
    on<CustomAddListEvent>(_onCustomAddListEvent);
  }

  FutureOr<void> _onCustomAddListEvent(
    CustomAddListEvent event,
    Emitter<AddListState> emit,
  ) {
    // TODO: Add Logic
  }
}
