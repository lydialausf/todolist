import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore db = FirebaseFirestore.instance;
final CollectionReference todos = db.collection('todos');
final DocumentReference doc = todos.doc();

class DatabaseService {
  Stream<QuerySnapshot> getTodos() {
    return todos.snapshots();
  }

  Future<void> addTodo(String description, String title) async {
    await todos
        .add({
          'title': title,
          'description': description,
          'createdOn': Timestamp.now(),
          'completed': false,
          'id': doc.id,
          'updatedOn': Timestamp.now(),
        })
        .whenComplete(() => print("Todo added"))
        .onError((error, stackTrace) {
          print("Error adding todo: $error");
          return Future.error("Error adding todo: $error");
        });
  }

  Future<void> updateTodo(
      String id, String description, String title, bool completed) async {
    await todos
        .doc(id)
        .update({
          'title': title,
          'description': description,
          'completed': completed,
          'updatedOn': Timestamp.now(),
        })
        .whenComplete(() => print("Todo updated"))
        .onError((error, stackTrace) {
          print("Error updating todo: $error");
          return Future.error("Error updating todo: $error");
        });
  }

  Future<void> deleteTodo(String id) async {
    await todos
        .doc(id)
        .delete()
        .whenComplete(() => print("Todo deleted"))
        .onError((error, stackTrace) {
      print("Error deleting todo: $error");
      return Future.error("Error deleting todo: $error");
    });
  }
}
