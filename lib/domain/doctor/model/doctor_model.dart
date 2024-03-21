import 'package:json_annotation/json_annotation.dart';

import 'all_doctor.dart';
part 'doctor_model.g.dart';

@JsonSerializable()
class DoctorModel {
  bool? success;
  @JsonKey(name: 'All Doctors')
  List<AllDoctor>? allDoctors;
  String? code;
  String? message;

  DoctorModel({this.success, this.allDoctors, this.code, this.message});

  factory DoctorModel.fromJson(Map<String, dynamic> json) {
    return _$DoctorModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);
}
