part of 'inital_page_bloc.dart';

abstract class InitalPageEvent  extends Equatable {
  const InitalPageEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_inital_page_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomInitalPageEvent extends InitalPageEvent {
  /// {@macro custom_inital_page_event}
  const CustomInitalPageEvent();
}
