import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 0)
class UserModel extends HiveObject {
  @JsonKey(
    name: 'id',
  )
  @HiveField(0)
  int id;

  @JsonKey(
    name: 'FullName',
  )
  @HiveField(1)
  String fullName;

  @JsonKey(
    name: 'Username',
  )
  @HiveField(2)
  String userName;

  UserModel({
    this.id = -1,
    this.userName = '',
    this.fullName = '',
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);

  UserModel copy() => UserModel(
        id: id,
        userName: userName,
        fullName: fullName,
      );
}
