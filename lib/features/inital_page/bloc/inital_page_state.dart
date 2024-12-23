part of 'inital_page_bloc.dart';

/// {@template inital_page_state}
/// InitalPageState description
/// {@endtemplate}
class InitalPageState extends Equatable {
  /// {@macro inital_page_state}
  const InitalPageState({
    this.customProperty = 'Default Value',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current InitalPageState with property changes
  InitalPageState copyWith({
    String? customProperty,
  }) {
    return InitalPageState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template inital_page_initial}
/// The initial state of InitalPageState
/// {@endtemplate}
class InitalPageInitial extends InitalPageState {
  /// {@macro inital_page_initial}
  const InitalPageInitial() : super();
}
