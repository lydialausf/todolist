// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/add_list/add_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AddListPage', () {
    group('route', () {
      test('is routable', () {
        expect(AddListPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders AddListView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: AddListPage()));
      expect(find.byType(AddListView), findsOneWidget);
    });
  });
}
