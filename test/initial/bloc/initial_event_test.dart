// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/initial/bloc/bloc.dart';

void main() {
  group('InitialEvent', () {  
    group('CustomInitialEvent', () {
      test('supports value equality', () {
        expect(
          CustomInitialEvent(),
          equals(const CustomInitialEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomInitialEvent(),
          isNotNull
        );
      });
    });
  });
}
