// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
      success: json['success'] as bool?,
      allDoctors: (json['All Doctors'] as List<dynamic>?)
          ?.map((e) => AllDoctor.fromJson(e as Map<String, dynamic>))
          .toList(),
      code: json['code'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'All Doctors': instance.allDoctors,
      'code': instance.code,
      'message': instance.message,
    };
