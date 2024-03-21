import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'radio_event.dart';
part 'radio_state.dart';
part 'radio_bloc.freezed.dart';

class RadioBloc extends Bloc<RadioEvent, RadioState> {
  RadioBloc() : super(RadioState.initial()) {
    on<_Started>((event, emit) {
      emit(
        RadioState(
          selectedGender: event.selectedGender,
          selectedDate: event.selectedDate,
          location: event.location,
        ),
      );
    });
    on<_GenderChanged>((event, emit) {


      
      emit(state.copyWith(selectedGender: event.selectedGender));
    });
    on<_DateChanged>((event, emit) {
      emit(state.copyWith(selectedDate: event.selectedDate));
    });
     on<_LocationChanged>((event, emit) {
      emit(state.copyWith(location: event.location));
    });
  }
}
