// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/add_list/bloc/bloc.dart';

void main() {
  group('AddListEvent', () {  
    group('CustomAddListEvent', () {
      test('supports value equality', () {
        expect(
          CustomAddListEvent(),
          equals(const CustomAddListEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomAddListEvent(),
          isNotNull
        );
      });
    });
  });
}
