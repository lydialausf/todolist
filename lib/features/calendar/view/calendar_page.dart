import 'package:flutter/material.dart';
import 'package:todo_list/features/calendar/widgets/calendar_body.dart';

/// {@template calendar_page}
/// A description for CalendarPage
/// {@endtemplate}
class CalendarPage extends StatelessWidget {
  /// {@macro calendar_page}
  const CalendarPage({super.key});

  /// The static route for CalendarPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const CalendarPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CalendarView(),
    );
  }
}

/// {@template calendar_view}
/// Displays the Body of CalendarView
/// {@endtemplate}
class CalendarView extends StatelessWidget {
  /// {@macro calendar_view}
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CalendarBody();
  }
}
