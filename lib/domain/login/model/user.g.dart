// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      firstname: json['firstname'] as String?,
      email: json['email'] as String?,
      age: json['age'],
      dateofbirth: json['dateofbirth'] as String?,
      emailVerifiedAt: json['email_verified_at'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      userRole: json['user_role'] as String?,
      mobileNo: json['mobileNo'] as String?,
      secondname: json['secondname'],
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'email': instance.email,
      'age': instance.age,
      'dateofbirth': instance.dateofbirth,
      'email_verified_at': instance.emailVerifiedAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'user_role': instance.userRole,
      'mobileNo': instance.mobileNo,
      'secondname': instance.secondname,
    };
