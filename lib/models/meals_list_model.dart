import 'package:json_annotation/json_annotation.dart';

part 'meals_list_model.g.dart';

@JsonSerializable()
class MealsListModel {
  @JsonKey(
    name: 'imagePath',
  )
  final String imagePath;

  @JsonKey(
    name: 'titleTxt',
  )
  final String titleTxt;

  @JsonKey(
    name: 'startColor',
  )
  final int startColor;

  @JsonKey(
    name: 'endColor',
  )
  final int endColor;

  @JsonKey(
    name: 'meals',
  )
  final List<String>? meals;

  @JsonKey(
    name: 'kacl',
  )
  final int kacl;

  MealsListModel({
    this.imagePath = '',
    this.titleTxt = '',
    this.startColor = 0xFFFFFFFF,
    this.endColor = 0xFFFFFFFF,
    this.meals,
    this.kacl = 0,
  });

  factory MealsListModel.fromJson(Map<String, dynamic> json) =>
      _$MealsListModelFromJson(json);

  Map<String, dynamic> toJson() => _$MealsListModelToJson(this);
}
