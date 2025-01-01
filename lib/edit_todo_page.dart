import 'package:flutter/material.dart';
import 'package:todolist/database_service.dart';
import 'package:todolist/todo.dart';

class EditTodoPage extends StatefulWidget {
  const EditTodoPage({required this.todo, super.key});

  final Todo todo;

  @override
  State<EditTodoPage> createState() => _EditTodoPageState();
}

class _EditTodoPageState extends State<EditTodoPage> {
  late final TextEditingController titleController =
      TextEditingController(text: widget.todo.title);

  late final TextEditingController descriptionController =
      TextEditingController(text: widget.todo.description);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Todo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
              SizedBox(
                height: 16,
              ),
              ElevatedButton(
                onPressed: () {
                  DatabaseService().updateTodo(
                      widget.todo.id,
                      descriptionController.text,
                      titleController.text,
                      widget.todo.completed);
                  Navigator.pop(context);
                },
                child: Text("Update Todo"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
