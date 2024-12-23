// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/inital_page/bloc/bloc.dart';

void main() {
  group('InitalPageBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          InitalPageBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final initalPageBloc = InitalPageBloc();
      expect(initalPageBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<InitalPageBloc, InitalPageState>(
      'CustomInitalPageEvent emits nothing',
      build: InitalPageBloc.new,
      act: (bloc) => bloc.add(const CustomInitalPageEvent()),
      expect: () => <InitalPageState>[],
    );
  });
}
