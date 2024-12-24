// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/calendar/bloc/bloc.dart';

void main() {
  group('CalendarState', () {
    test('supports value equality', () {
      expect(
        CalendarState(),
        equals(
          const CalendarState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CalendarState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const calendarState = CalendarState(
            customProperty: 'My property',
          );
          expect(
            calendarState.copyWith(),
            equals(calendarState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const calendarState = CalendarState(
            customProperty: 'My property',
          );
          final otherCalendarState = CalendarState(
            customProperty: 'My property 2',
          );
          expect(calendarState, isNot(equals(otherCalendarState)));

          expect(
            calendarState.copyWith(
              customProperty: otherCalendarState.customProperty,
            ),
            equals(otherCalendarState),
          );
        },
      );
    });
  });
}
