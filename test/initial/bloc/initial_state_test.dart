// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/initial/bloc/bloc.dart';

void main() {
  group('InitialState', () {
    test('supports value equality', () {
      expect(
        InitialState(),
        equals(
          const InitialState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const InitialState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const initialState = InitialState(
            customProperty: 'My property',
          );
          expect(
            initialState.copyWith(),
            equals(initialState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const initialState = InitialState(
            customProperty: 'My property',
          );
          final otherInitialState = InitialState(
            customProperty: 'My property 2',
          );
          expect(initialState, isNot(equals(otherInitialState)));

          expect(
            initialState.copyWith(
              customProperty: otherInitialState.customProperty,
            ),
            equals(otherInitialState),
          );
        },
      );
    });
  });
}
