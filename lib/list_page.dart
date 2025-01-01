import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todolist/add_todo_page.dart';
import 'package:todolist/database_service.dart';
import 'package:todolist/edit_todo_page.dart';
import 'package:todolist/todo.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('dd-MM-yyyy h:mm a');
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Firebase Todo"),
            IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => AddTodoPage())),
                icon: Icon(Icons.add))
          ],
        ),
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
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                EditTodoPage(todo: todoDoc))),
                    title: Text(
                      todo['title'],
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
