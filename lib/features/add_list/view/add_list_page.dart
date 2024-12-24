import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_list/features/add_list/widgets/add_list_body.dart';

/// {@template add_list_page}
/// A description for AddListPage
/// {@endtemplate}
class AddListPage extends StatelessWidget {
  /// {@macro add_list_page}
  const AddListPage({super.key});

  /// The static route for AddListPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const AddListPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () => context.pop(), child: const Text("Cancel")),
            TextButton(onPressed: () {}, child: const Text("Save")),
          ],
        ),
      ),
      appBar: AppBar(),
      body: const AddListView(),
    );
  }
}

/// {@template add_list_view}
/// Displays the Body of AddListView
/// {@endtemplate}
class AddListView extends StatelessWidget {
  /// {@macro add_list_view}
  const AddListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AddListBody();
  }
}
