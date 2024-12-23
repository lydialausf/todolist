// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/features/edit_list/bloc/bloc.dart';

void main() {
  group('EditListBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          EditListBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final editListBloc = EditListBloc();
      expect(editListBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<EditListBloc, EditListState>(
      'CustomEditListEvent emits nothing',
      build: EditListBloc.new,
      act: (bloc) => bloc.add(const CustomEditListEvent()),
      expect: () => <EditListState>[],
    );
  });
}
