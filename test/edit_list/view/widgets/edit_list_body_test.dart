// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/edit_list/edit_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EditListBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => EditListBloc(),
          child: MaterialApp(home: EditListBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
