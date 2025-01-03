import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/controller/controller.dart';
import 'package:todolist/model/model.dart';
import 'package:todolist/navigator/navigator.dart';
import 'package:todolist/presentation/presentation.dart';
import 'package:todolist/widgets/theme.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd-MM-yyyy h:mm a');
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
                builder: (BuildContext context) => AddTodoPage())),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(MyAppThemes.themeNotifier.value == ThemeMode.light
                  ? Icons.dark_mode
                  : Icons.light_mode),
              onPressed: () {
                MyAppThemes.themeNotifier.value =
                    MyAppThemes.themeNotifier.value == ThemeMode.light
                        ? ThemeMode.dark
                        : ThemeMode.light;
              })
        ],
        title: Text("Firebase Todo"),
      ),
      body: StreamBuilder(
          stream: DatabaseService().getTodos(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            return ListView.builder(
                itemCount: snapshot.data?.docs.length,
                itemBuilder: (context, index) {
                  final todo = snapshot.data?.docs[index];

                  Todo todoDoc = Todo.fromDocumentSnapshot(todo!);
                  return ListTile(
                    trailing: PopupMenuButton(itemBuilder: (context) {
                      return [
                        PopupMenuItem(
                            value: 'delete',
                            child: Text('Delete Todo'),
                            onTap: () {
                              DatabaseService().deleteTodo(todoDoc.id);
                            }),
                        PopupMenuItem(
                            value: 'edit',
                            child: Text('Edit Todo'),
                            onTap: () => TodoNavigator.push(
                                context,
                                EditTodoPage(
                                  todo: todoDoc,
                                ))),
                      ];
                    }),
                    leading: Checkbox(
                      value: todo['completed'],
                      onChanged: (value) {
                        DatabaseService().updateTodo(todoDoc.id,
                            todo['description'], todo['title'], value!);
                      },
                    ),
                    onTap: () => TodoNavigator.push(
                        context, EditTodoPage(todo: todoDoc)),
                    title: Text(
                      todo['title'],
                      style: TextStyle(
                          decoration: todo['completed']
                              ? TextDecoration.lineThrough
                              : TextDecoration.none),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(todo['description']),
                        Text(
                          formatter.format(todo['updatedOn'].toDate()),
                        ),
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
