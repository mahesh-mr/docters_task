part of 'doctor_bloc.dart';

@freezed
class DoctorState with _$DoctorState {
  const factory DoctorState({
    required bool isLoding,
    required List<AllDoctor> model,
    required Option<Either<MainFailure, List<AllDoctor>>>
        doctorFaileurOrSuccessOption,
  }) = _DoctorState;

  factory DoctorState.initial() {
    return DoctorState(
        isLoding: false, model: [], doctorFaileurOrSuccessOption: none());
  }
}
