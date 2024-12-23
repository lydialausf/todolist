import 'package:flutter/material.dart';
import 'package:todo_list/features/edit_list/bloc/bloc.dart';
import 'package:todo_list/features/edit_list/widgets/edit_list_body.dart';

/// {@template edit_list_page}
/// A description for EditListPage
/// {@endtemplate}
class EditListPage extends StatelessWidget {
  /// {@macro edit_list_page}
  const EditListPage({super.key});

  /// The static route for EditListPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const EditListPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: EditListView(),
    );
  }
}

/// {@template edit_list_view}
/// Displays the Body of EditListView
/// {@endtemplate}
class EditListView extends StatelessWidget {
  /// {@macro edit_list_view}
  const EditListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const EditListBody();
  }
}
