import 'package:flutter/material.dart';
import 'package:todolist/database_service.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final TextEditingController titleController = TextEditingController();

  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(hintText: "Title"),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(hintText: "Description"),
            ),
            ElevatedButton(
              onPressed: () {
                DatabaseService()
                    .addTodo(titleController.text, descriptionController.text);
                Navigator.pop(context);
              },
              child: Text("Add Todo"),
            )
          ],
        ),
      ),
    );
  }
}
