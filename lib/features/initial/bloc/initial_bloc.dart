import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'initial_event.dart';
part 'initial_state.dart';

class InitialBloc extends Bloc<InitialEvent, InitialState> {
  InitialBloc() : super(const InitialInitial()) {
    on<CustomInitialEvent>(_onCustomInitialEvent);
  }

  FutureOr<void> _onCustomInitialEvent(
    CustomInitialEvent event,
    Emitter<InitialState> emit,
  ) {
    // TODO: Add Logic
  }
}
