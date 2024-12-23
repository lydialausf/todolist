// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/inital_page/bloc/bloc.dart';

void main() {
  group('InitalPageEvent', () {  
    group('CustomInitalPageEvent', () {
      test('supports value equality', () {
        expect(
          CustomInitalPageEvent(),
          equals(const CustomInitalPageEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomInitalPageEvent(),
          isNotNull
        );
      });
    });
  });
}
