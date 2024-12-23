// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/add_list/bloc/bloc.dart';

void main() {
  group('AddListState', () {
    test('supports value equality', () {
      expect(
        AddListState(),
        equals(
          const AddListState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const AddListState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const addListState = AddListState(
            customProperty: 'My property',
          );
          expect(
            addListState.copyWith(),
            equals(addListState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const addListState = AddListState(
            customProperty: 'My property',
          );
          final otherAddListState = AddListState(
            customProperty: 'My property 2',
          );
          expect(addListState, isNot(equals(otherAddListState)));

          expect(
            addListState.copyWith(
              customProperty: otherAddListState.customProperty,
            ),
            equals(otherAddListState),
          );
        },
      );
    });
  });
}
