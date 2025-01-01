import 'package:flutter/material.dart';
import 'package:todolist/model/model.dart';

void showAppDialog(BuildContext context, bool isEdit, Todo? todo) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(isEdit ? 'Edit Todo' : 'Add Todo'),
        content: const Text('This is the content of the dialog'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
