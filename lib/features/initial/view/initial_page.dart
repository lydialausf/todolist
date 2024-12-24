import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_list/features/calendar/view/calendar_page.dart';
import 'package:todo_list/features/initial/widgets/widgets.dart';
import 'package:todo_list/main.dart';

/// {@template initial_page}
/// A description for InitialPage
/// {@endtemplate}
class InitialPage extends StatefulWidget {
  /// {@macro initial_page}
  const InitialPage({super.key});

  @override
  State<InitialPage> createState() => _InitialPageState();
}

class _InitialPageState extends State<InitialPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text("To Do List"),
              ),
              ListTile(
                title: const Text("About"),
                onTap: () {},
              ),
            ],
          ),
        ),
        bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              NavigationDestination(icon: Icon(Icons.done), label: "To Do"),
              NavigationDestination(
                  icon: Icon(Icons.calendar_month), label: "Calendar")
            ]),
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
        body:
            currentPageIndex == 0 ? const InitialView() : const CalendarPage());
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
