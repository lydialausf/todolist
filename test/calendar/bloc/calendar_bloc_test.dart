// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/calendar/bloc/bloc.dart';

void main() {
  group('CalendarBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          CalendarBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final calendarBloc = CalendarBloc();
      expect(calendarBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<CalendarBloc, CalendarState>(
      'CustomCalendarEvent emits nothing',
      build: CalendarBloc.new,
      act: (bloc) => bloc.add(const CustomCalendarEvent()),
      expect: () => <CalendarState>[],
    );
  });
}
