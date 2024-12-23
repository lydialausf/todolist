// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/initial/bloc/bloc.dart';

void main() {
  group('InitialBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          InitialBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final initialBloc = InitialBloc();
      expect(initialBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<InitialBloc, InitialState>(
      'CustomInitialEvent emits nothing',
      build: InitialBloc.new,
      act: (bloc) => bloc.add(const CustomInitialEvent()),
      expect: () => <InitialState>[],
    );
  });
}
