import 'package:json_annotation/json_annotation.dart';

part 'clinic.g.dart';

@JsonSerializable()
class Clinic {
	@JsonKey(name: 'clinic_id') 
	int? clinicId;
	@JsonKey(name: 'clinic_name') 
	String? clinicName;
	@JsonKey(name: 'clinic_start_time') 
	dynamic clinicStartTime;
	@JsonKey(name: 'clinic_end_time') 
	dynamic clinicEndTime;
	@JsonKey(name: 'clinic_address') 
	String? clinicAddress;
	@JsonKey(name: 'clinic_location') 
	String? clinicLocation;
	@JsonKey(name: 'clinic_main_image') 
	String? clinicMainImage;
	@JsonKey(name: 'clinic_description') 
	String? clinicDescription;
	@JsonKey(name: 'total_token_Count') 
	int? totalTokenCount;
	@JsonKey(name: 'available_token_count') 
	int? availableTokenCount;

	Clinic({
		this.clinicId, 
		this.clinicName, 
		this.clinicStartTime, 
		this.clinicEndTime, 
		this.clinicAddress, 
		this.clinicLocation, 
		this.clinicMainImage, 
		this.clinicDescription, 
		this.totalTokenCount, 
		this.availableTokenCount, 
	});

	factory Clinic.fromJson(Map<String, dynamic> json) {
		return _$ClinicFromJson(json);
	}

	Map<String, dynamic> toJson() => _$ClinicToJson(this);
}
