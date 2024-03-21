import 'package:json_annotation/json_annotation.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
	String? firstname;
	String? mobileNo;
	String? email;
	int? age;
	String? dateofbirth;
	String? location;
	String? gender;
	@JsonKey(name: 'UserId') 
	int? userId;
	@JsonKey(name: 'mediezy_patient_id') 
	String? mediezyPatientId;
	@JsonKey(name: 'updated_at') 
	DateTime? updatedAt;
	@JsonKey(name: 'created_at') 
	DateTime? createdAt;
	int? id;

	Users({
		this.firstname, 
		this.mobileNo, 
		this.email, 
		this.age, 
		this.dateofbirth, 
		this.location, 
		this.gender, 
		this.userId, 
		this.mediezyPatientId, 
		this.updatedAt, 
		this.createdAt, 
		this.id, 
	});

	factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);

	Map<String, dynamic> toJson() => _$UsersToJson(this);
}
