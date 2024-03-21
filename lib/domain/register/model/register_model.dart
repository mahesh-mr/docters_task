import 'package:json_annotation/json_annotation.dart';

import 'users.dart';

part 'register_model.g.dart';

@JsonSerializable()
class RegisterModel {
	bool? success;
	Users? users;
	String? code;
	String? message;

	RegisterModel({this.success, this.users, this.code, this.message});

	factory RegisterModel.fromJson(Map<String, dynamic> json) {
		return _$RegisterModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$RegisterModelToJson(this);
}
