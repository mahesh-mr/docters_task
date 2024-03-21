import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/doctor/doctor_service.dart';
import 'package:mediezytech_task/domain/doctor/model/all_doctor.dart';
import 'package:mediezytech_task/domain/doctor/model/doctor_model.dart';

part 'doctor_event.dart';
part 'doctor_state.dart';
part 'doctor_bloc.freezed.dart';

@injectable
class DoctorBloc extends Bloc<DoctorEvent, DoctorState> {
  DoctorRepo doctorRepo;
  DoctorBloc(this.doctorRepo) : super(DoctorState.initial()) {
    on<_Started>(
      (event, emit) async {
        emit(state.copyWith(
          isLoding: true,
          model: [],
          doctorFaileurOrSuccessOption: none(),
        ));
        print(emit);
        final Either<MainFailure, List<AllDoctor>> doctorOptions =
            await doctorRepo.getdoctersData();
        print("${doctorOptions.toString()} ======");
        emit(
          doctorOptions.fold(
            (failure) => state.copyWith(
              isLoding: false,model: [],
              doctorFaileurOrSuccessOption: some(
                left(failure),
              ),
            ),
            (success) => state.copyWith(
              isLoding: false,
              model: success,
              doctorFaileurOrSuccessOption: some(
                right(
                  success,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
