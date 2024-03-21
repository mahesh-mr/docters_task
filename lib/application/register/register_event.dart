part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.started({
    required String name,
    required String secondNmae,
    required String email,
    required String mobile,
    required String password,
    required String location,
    required String genter,
    required String dob,
  }) = _Started;
}