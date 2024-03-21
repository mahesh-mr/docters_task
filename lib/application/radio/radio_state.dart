part of 'radio_bloc.dart';

@freezed
class RadioState with _$RadioState {
  const factory RadioState(
      {required int selectedGender,
      DateTime? selectedDate,
      String? location}) = _Initial;
  factory RadioState.initial() => RadioState(
        selectedGender: 1,
        selectedDate: null,
      );
}
