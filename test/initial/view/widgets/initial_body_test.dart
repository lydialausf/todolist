// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/initial/initial.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InitialBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => InitialBloc(),
          child: MaterialApp(home: InitialBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
