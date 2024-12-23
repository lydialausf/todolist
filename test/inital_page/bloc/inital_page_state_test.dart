// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/inital_page/bloc/bloc.dart';

void main() {
  group('InitalPageState', () {
    test('supports value equality', () {
      expect(
        InitalPageState(),
        equals(
          const InitalPageState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const InitalPageState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const initalPageState = InitalPageState(
            customProperty: 'My property',
          );
          expect(
            initalPageState.copyWith(),
            equals(initalPageState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const initalPageState = InitalPageState(
            customProperty: 'My property',
          );
          final otherInitalPageState = InitalPageState(
            customProperty: 'My property 2',
          );
          expect(initalPageState, isNot(equals(otherInitalPageState)));

          expect(
            initalPageState.copyWith(
              customProperty: otherInitalPageState.customProperty,
            ),
            equals(otherInitalPageState),
          );
        },
      );
    });
  });
}
