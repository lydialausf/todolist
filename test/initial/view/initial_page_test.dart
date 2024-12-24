// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/initial/initial.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InitialPage', () {
    group('route', () {});

    testWidgets('renders InitialView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: InitialPage()));
      expect(find.byType(InitialView), findsOneWidget);
    });
  });
}
