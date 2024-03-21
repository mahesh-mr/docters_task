// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users(
      firstname: json['firstname'] as String?,
      mobileNo: json['mobileNo'] as String?,
      email: json['email'] as String?,
      age: json['age'] as int?,
      dateofbirth: json['dateofbirth'] as String?,
      location: json['location'] as String?,
      gender: json['gender'] as String?,
      userId: json['UserId'] as int?,
      mediezyPatientId: json['mediezy_patient_id'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'firstname': instance.firstname,
      'mobileNo': instance.mobileNo,
      'email': instance.email,
      'age': instance.age,
      'dateofbirth': instance.dateofbirth,
      'location': instance.location,
      'gender': instance.gender,
      'UserId': instance.userId,
      'mediezy_patient_id': instance.mediezyPatientId,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };
