import 'package:flutter/material.dart';
import 'package:todolist/controller/controller.dart';
import 'package:todolist/model/model.dart';

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
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Todo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: titleController,
                  decoration: InputDecoration(hintText: "Title"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter title";
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: descriptionController,
                  decoration: InputDecoration(hintText: "Description"),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter description";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      DatabaseService().updateTodo(
                          widget.todo.id,
                          descriptionController.text,
                          titleController.text,
                          widget.todo.completed);
                      Navigator.pop(context);
                    }
                  },
                  child: Text("Update Todo"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
