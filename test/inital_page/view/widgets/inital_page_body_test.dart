// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/inital_page/inital_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InitalPageBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => InitalPageBloc(),
          child: MaterialApp(home: InitalPageBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
