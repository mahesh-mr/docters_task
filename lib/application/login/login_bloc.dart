import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/login/login_service.dart';
import 'package:mediezytech_task/domain/login/model/login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';


@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginService _loginService;
  LoginBloc(this._loginService) : super(LoginState.initial()) {
    on<_Started>((event, emit) async {
      emit(state.copyWith(
        isloding: true,
        registerFaileurOrSuccessOption: none(),
      ));
      print(emit);
      final Either<MainFailure, LoginModel> loginOption =
          await _loginService.loginService(
        email: event.email,
        password: event.password,
      );
        print("${loginOption.toString()} ======");
          emit(
        loginOption.fold(
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
