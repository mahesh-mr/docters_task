import 'package:json_annotation/json_annotation.dart';

import 'user.dart';
part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
	User? user;
	String? token;
	String? role;

	LoginModel({this.user, this.token, this.role});

	factory LoginModel.fromJson(Map<String, dynamic> json) {
		return _$LoginModelFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LoginModelToJson(this);
}
