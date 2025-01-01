import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/controller/controller.dart';
import 'package:todolist/model/model.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({required this.todo, super.key});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('EEE, MMM d ' 'yyyy');
    return Scaffold(
        appBar: AppBar(
            title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(formatter.format(todo.updatedOn.toDate())),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(
                    value: 'delete',
                    child: Text('Delete Todo'),
                    onTap: () {
                      DatabaseService().deleteTodo(todo.id);
                      Navigator.pop(context);
                    }),
                PopupMenuItem(
                  value: 'edit',
                  child: Text('Edit Todo'),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              PreviewPage(todo: todo))),
                ),
              ];
            }),
          ],
        )),
        body: Column(
          children: [
            Text("Title"),
            Text(todo.title),
            Text("Description"),
            Text(todo.description),
          ],
        ));
  }
}
