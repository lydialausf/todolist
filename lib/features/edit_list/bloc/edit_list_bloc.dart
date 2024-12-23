import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'edit_list_event.dart';
part 'edit_list_state.dart';

class EditListBloc extends Bloc<EditListEvent, EditListState> {
  EditListBloc() : super(const EditListInitial()) {
    on<CustomEditListEvent>(_onCustomEditListEvent);
  }

  FutureOr<void> _onCustomEditListEvent(
    CustomEditListEvent event,
    Emitter<EditListState> emit,
  ) {
    // TODO: Add Logic
  }
}
