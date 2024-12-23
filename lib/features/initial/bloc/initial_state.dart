part of 'initial_bloc.dart';

/// {@template initial_state}
/// InitialState description
/// {@endtemplate}
class InitialState extends Equatable {
  /// {@macro initial_state}
  const InitialState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current InitialState with property changes
  InitialState copyWith({
    String? customProperty,
  }) {
    return InitialState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template initial_initial}
/// The initial state of InitialState
/// {@endtemplate}
class InitialInitial extends InitialState {
  /// {@macro initial_initial}
  const InitialInitial() : super();
}
