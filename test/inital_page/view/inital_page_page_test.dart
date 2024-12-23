// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/inital_page/inital_page.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('InitalPagePage', () {
    group('route', () {
      test('is routable', () {
        expect(InitalPagePage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders InitalPageView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: InitalPagePage()));
      expect(find.byType(InitalPageView), findsOneWidget);
    });
  });
}
