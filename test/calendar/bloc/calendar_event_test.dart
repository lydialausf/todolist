// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/calendar/bloc/bloc.dart';

void main() {
  group('CalendarEvent', () {  
    group('CustomCalendarEvent', () {
      test('supports value equality', () {
        expect(
          CustomCalendarEvent(),
          equals(const CustomCalendarEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomCalendarEvent(),
          isNotNull
        );
      });
    });
  });
}
