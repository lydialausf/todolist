part of 'calendar_bloc.dart';

/// {@template calendar_state}
/// CalendarState description
/// {@endtemplate}
class CalendarState extends Equatable {
  /// {@macro calendar_state}
  const CalendarState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current CalendarState with property changes
  CalendarState copyWith({
    String? customProperty,
  }) {
    return CalendarState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template calendar_initial}
/// The initial state of CalendarState
/// {@endtemplate}
class CalendarInitial extends CalendarState {
  /// {@macro calendar_initial}
  const CalendarInitial() : super();
}
