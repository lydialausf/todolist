// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/calendar/calendar.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalendarPage', () {
    group('route', () {
      test('is routable', () {
        expect(CalendarPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders CalendarView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: CalendarPage()));
      expect(find.byType(CalendarView), findsOneWidget);
    });
  });
}
