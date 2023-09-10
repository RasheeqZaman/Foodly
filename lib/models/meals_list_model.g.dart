// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meals_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealsListModel _$MealsListModelFromJson(Map<String, dynamic> json) =>
    MealsListModel(
      imagePath: json['imagePath'] as String? ?? '',
      titleTxt: json['titleTxt'] as String? ?? '',
      startColor: json['startColor'] as int? ?? 0xFFFFFFFF,
      endColor: json['endColor'] as int? ?? 0xFFFFFFFF,
      meals:
          (json['meals'] as List<dynamic>?)?.map((e) => e as String).toList(),
      kacl: json['kacl'] as int? ?? 0,
    );

Map<String, dynamic> _$MealsListModelToJson(MealsListModel instance) =>
    <String, dynamic>{
      'imagePath': instance.imagePath,
      'titleTxt': instance.titleTxt,
      'startColor': instance.startColor,
      'endColor': instance.endColor,
      'meals': instance.meals,
      'kacl': instance.kacl,
    };
