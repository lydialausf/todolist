// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/add_list/bloc/bloc.dart';

void main() {
  group('AddListBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AddListBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final addListBloc = AddListBloc();
      expect(addListBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<AddListBloc, AddListState>(
      'CustomAddListEvent emits nothing',
      build: AddListBloc.new,
      act: (bloc) => bloc.add(const CustomAddListEvent()),
      expect: () => <AddListState>[],
    );
  });
}
