part of 'calendar_bloc.dart';

abstract class CalendarEvent  extends Equatable {
  const CalendarEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_calendar_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomCalendarEvent extends CalendarEvent {
  /// {@macro custom_calendar_event}
  const CustomCalendarEvent();
}
