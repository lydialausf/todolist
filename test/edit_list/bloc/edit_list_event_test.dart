// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/edit_list/bloc/bloc.dart';

void main() {
  group('EditListEvent', () {  
    group('CustomEditListEvent', () {
      test('supports value equality', () {
        expect(
          CustomEditListEvent(),
          equals(const CustomEditListEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomEditListEvent(),
          isNotNull
        );
      });
    });
  });
}
