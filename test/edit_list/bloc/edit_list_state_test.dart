// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/edit_list/bloc/bloc.dart';

void main() {
  group('EditListState', () {
    test('supports value equality', () {
      expect(
        EditListState(),
        equals(
          const EditListState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const EditListState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const editListState = EditListState(
            customProperty: 'My property',
          );
          expect(
            editListState.copyWith(),
            equals(editListState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const editListState = EditListState(
            customProperty: 'My property',
          );
          final otherEditListState = EditListState(
            customProperty: 'My property 2',
          );
          expect(editListState, isNot(equals(otherEditListState)));

          expect(
            editListState.copyWith(
              customProperty: otherEditListState.customProperty,
            ),
            equals(otherEditListState),
          );
        },
      );
    });
  });
}
