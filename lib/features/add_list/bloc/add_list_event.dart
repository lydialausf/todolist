part of 'add_list_bloc.dart';

abstract class AddListEvent  extends Equatable {
  const AddListEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_add_list_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomAddListEvent extends AddListEvent {
  /// {@macro custom_add_list_event}
  const CustomAddListEvent();
}
