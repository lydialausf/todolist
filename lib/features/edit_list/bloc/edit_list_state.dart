part of 'edit_list_bloc.dart';

/// {@template edit_list_state}
/// EditListState description
/// {@endtemplate}
class EditListState extends Equatable {
  /// {@macro edit_list_state}
  const EditListState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current EditListState with property changes
  EditListState copyWith({
    String? customProperty,
  }) {
    return EditListState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template edit_list_initial}
/// The initial state of EditListState
/// {@endtemplate}
class EditListInitial extends EditListState {
  /// {@macro edit_list_initial}
  const EditListInitial() : super();
}
