part of 'add_list_bloc.dart';

/// {@template add_list_state}
/// AddListState description
/// {@endtemplate}
class AddListState extends Equatable {
  /// {@macro add_list_state}
  const AddListState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current AddListState with property changes
  AddListState copyWith({
    String? customProperty,
  }) {
    return AddListState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template add_list_initial}
/// The initial state of AddListState
/// {@endtemplate}
class AddListInitial extends AddListState {
  /// {@macro add_list_initial}
  const AddListInitial() : super();
}
