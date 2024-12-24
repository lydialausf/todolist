import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';


part 'category_response.g.dart';

/// {@template category_response}
/// CategoryResponse description
/// {@endtemplate}
@JsonSerializable()
class CategoryResponse extends Equatable {
  /// {@macro category_response}
  const CategoryResponse({ 
  required this.personal,
  required this.work,
  });

    /// Creates a CategoryResponse from Json map
  factory CategoryResponse.fromJson(Map<String, dynamic> data) => _$CategoryResponseFromJson(data);

  /// A description for personal
  @JsonKey(name: 'personal')
  final String personal;

  /// A description for work
  @JsonKey(name: 'work')
  final String work;

    /// Creates a copy of the current CategoryResponse with property changes
  CategoryResponse copyWith({ 
    String? personal,
    String? work,
  }) {
    return CategoryResponse(
      personal: personal ?? this.personal,
      work: work ?? this.work,
    );
  }


    @override
  List<Object?> get props => [
        personal,
        work,
      ];

    /// Creates a Json map from a CategoryResponse
  Map<String, dynamic> toJson() => _$CategoryResponseToJson(this);

    /// Creates a toString() override for CategoryResponse
  @override
  String toString() => 'CategoryResponse(personal: $personal, work: $work)';
}
