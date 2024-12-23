import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_list/features/initial/widgets/widgets.dart';
import 'package:todo_list/main.dart';

/// {@template initial_page}
/// A description for InitialPage
/// {@endtemplate}
class InitialPage extends StatelessWidget {
  /// {@macro initial_page}
  const InitialPage({super.key});

  /// The static route for InitialPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const InitialPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.done),
            label: "To Do",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: "Calendar",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: ShapeBorder.lerp(
          const CircleBorder(),

          /// StadiumBorder because it looks like a stadium
          const StadiumBorder(),
          0.5,
        ),
        onPressed: () => context.go('/add_list'),
        child: const Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(),
      body: const InitialView(),
    );
  }
}

/// {@template initial_view}
/// Displays the Body of InitialView
/// {@endtemplate}
class InitialView extends StatelessWidget {
  /// {@macro initial_view}
  const InitialView({super.key});

  @override
  Widget build(BuildContext context) {
    return const InitialBody();
  }
}
