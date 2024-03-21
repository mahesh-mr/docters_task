part of 'radio_bloc.dart';

@freezed
class RadioEvent with _$RadioEvent {
  const factory RadioEvent.started({
    required int selectedGender,
    required DateTime selectedDate,
    required String  location
  }) = _Started;

  const factory RadioEvent.genderChanged(int selectedGender) = _GenderChanged;

  const factory RadioEvent.changeDte(DateTime selectedDate) = _DateChanged;
  const factory RadioEvent.changeLocation(String location) = _LocationChanged;
}
