import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class User {
  int? id;
  String? firstname;
  String? email;
  dynamic age;
  String? dateofbirth;
  @JsonKey(name: 'email_verified_at')
  dynamic emailVerifiedAt;
  @JsonKey(name: 'created_at')
  DateTime? createdAt;
  @JsonKey(name: 'updated_at')
  DateTime? updatedAt;
  @JsonKey(name: 'user_role')
  String? userRole;
  String? mobileNo;
  dynamic secondname;

  User({
    this.id,
    this.firstname,
    this.email,
    this.age,
    this.dateofbirth,
    this.emailVerifiedAt,
    this.createdAt,
    this.updatedAt,
    this.userRole,
    this.mobileNo,
    this.secondname,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
