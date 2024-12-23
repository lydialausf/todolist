// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_list/features/edit_list/edit_list.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('EditListPage', () {
    group('route', () {
      test('is routable', () {
        expect(EditListPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders EditListView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: EditListPage()));
      expect(find.byType(EditListView), findsOneWidget);
    });
  });
}
