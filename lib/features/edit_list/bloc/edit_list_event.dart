part of 'edit_list_bloc.dart';

abstract class EditListEvent  extends Equatable {
  const EditListEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_edit_list_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomEditListEvent extends EditListEvent {
  /// {@macro custom_edit_list_event}
  const CustomEditListEvent();
}
