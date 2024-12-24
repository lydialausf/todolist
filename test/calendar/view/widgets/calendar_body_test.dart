// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/calendar/calendar.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CalendarBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => CalendarBloc(),
          child: MaterialApp(home: CalendarBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
