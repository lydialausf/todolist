part of 'todo.dart';

Todo _$TodoFromJson(Map<String, dynamic> json) => Todo(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      completed: json['completed'] as bool,
      updatedOn: json['updatedOn'] as Timestamp,
      createdOn: json['createdOn'] as Timestamp,
    );

Map<String, dynamic> _$TodoToJson(Todo instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'completed': instance.completed,
      'updatedOn': instance.updatedOn,
      'createdOn': instance.createdOn,
    };
