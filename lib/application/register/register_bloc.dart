import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/register/model/register_model.dart';
import 'package:mediezytech_task/domain/register/register_service.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@injectable
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterService _registerService;
  RegisterBloc(this._registerService) : super(RegisterState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(
        isloding: true,
        registerFaileurOrSuccessOption: none(),
      ));
      print(emit);
      // emit(RegisterState.initial());
      final Either<MainFailure, RegisterModel> regOption =
          await _registerService.registerService(
              name: event.name,
              secondNmae: event.secondNmae,
              email: event.email,
              mobile: event.mobile,
              password: event.password,
              location: event.location,
              genter: event.genter,
              dob: event.dob);
      print("${regOption.toString()} ======");
      emit(
        regOption.fold(
          (failure) => state.copyWith(
            isloding: true,
            registerFaileurOrSuccessOption: some(
              left(
                failure,
              ),
            ),
          ),
          (success) => state.copyWith(
            isloding: false,
            model: success,
            registerFaileurOrSuccessOption: some(
              right(
                success,
              ),
            ),
          ),
        ),
      );
    });
  }
}
