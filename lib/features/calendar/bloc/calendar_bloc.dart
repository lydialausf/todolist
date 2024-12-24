import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc() : super(const CalendarInitial()) {
    on<CustomCalendarEvent>(_onCustomCalendarEvent);
  }

  FutureOr<void> _onCustomCalendarEvent(
    CustomCalendarEvent event,
    Emitter<CalendarState> emit,
  ) {
    // TODO: Add Logic
  }
}
