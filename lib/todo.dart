import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'todo.g.dart';

/// {@template todo}
/// Todo description
/// {@endtemplate}
@JsonSerializable()
class Todo extends Equatable {
  /// {@macro todo}
  const Todo({
    required this.id,
    required this.title,
    required this.description,
    required this.completed,
    required this.updatedOn,
    required this.createdOn,
  });

  /// Creates a Todo from Json map
  factory Todo.fromJson(Map<String, dynamic> data) => _$TodoFromJson(data);

  /// A description for id
  @JsonKey(name: 'id')
  final String id;

  /// A description for title
  @JsonKey(name: 'title')
  final String title;

  /// A description for description
  @JsonKey(name: 'description')
  final String description;

  /// A description for completed
  @JsonKey(name: 'completed')
  final bool completed;

  /// A description for updatedOn

  final Timestamp updatedOn;

  /// A description for createdOn

  final Timestamp createdOn;

  /// Creates a copy of the current Todo with property changes
  Todo copyWith({
    String? id,
    String? title,
    String? description,
    bool? completed,
    Timestamp? updatedOn,
    Timestamp? createdOn,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      completed: completed ?? this.completed,
      updatedOn: updatedOn ?? this.updatedOn,
      createdOn: createdOn ?? this.createdOn,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        completed,
        updatedOn,
        createdOn,
      ];

  /// Creates a Json map from a Todo
  Map<String, dynamic> toJson() => _$TodoToJson(this);

  factory Todo.fromDocumentSnapshot(DocumentSnapshot doc) {
    return Todo(
      id: doc.id,
      title: doc['title'],
      description: doc['description'],
      completed: doc['completed'],
      updatedOn: doc['updatedOn'],
      createdOn: doc['createdOn'],
    );
  }

  /// Creates a toString() override for Todo
  @override
  String toString() =>
      'Todo(id: $id, title: $title, description: $description, completed: $completed, updatedOn: $updatedOn, createdOn: $createdOn)';
}
