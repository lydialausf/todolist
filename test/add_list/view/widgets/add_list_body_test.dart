// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/add_list/add_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddListBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => AddListBloc(),
          child: MaterialApp(home: AddListBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
