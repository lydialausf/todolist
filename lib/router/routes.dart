import 'package:go_router/go_router.dart';
import 'package:todo_list/features/add_list/add_list.dart';
import 'package:todo_list/features/edit_list/edit_list.dart';
import 'package:todo_list/features/initial/initial.dart';

class MyTodoListRouter {
  final GoRouter _router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const InitialPage();
        },
        routes: <RouteBase>[
          GoRoute(
              path: '/add_list',
              builder: (context, state) {
                return const AddListPage();
              }),
          GoRoute(
              path: '/edit_list',
              builder: (context, state) {
                return const EditListPage();
              }),
        ]),
  ]);
  GoRouter get router => _router;
}
