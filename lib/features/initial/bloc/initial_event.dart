part of 'initial_bloc.dart';

abstract class InitialEvent  extends Equatable {
  const InitialEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_initial_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomInitialEvent extends InitialEvent {
  /// {@macro custom_initial_event}
  const CustomInitialEvent();
}
