import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'inital_page_event.dart';
part 'inital_page_state.dart';

class InitalPageBloc extends Bloc<InitalPageEvent, InitalPageState> {
  InitalPageBloc() : super(const InitalPageInitial()) {
    on<CustomInitalPageEvent>(_onCustomInitalPageEvent);
  }

  FutureOr<void> _onCustomInitalPageEvent(
    CustomInitalPageEvent event,
    Emitter<InitalPageState> emit,
  ) {
    // TODO: Add Logic
  }
}
