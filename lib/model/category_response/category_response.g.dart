part of 'category_response.dart';

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) => CategoryResponse(
      personal: json['personal'] as String,
      work: json['work'] as String,
    );

Map<String, dynamic> _$CategoryResponseToJson(CategoryResponse instance) => <String, dynamic>{ 
      'personal': instance.personal,
      'work': instance.work,
    };