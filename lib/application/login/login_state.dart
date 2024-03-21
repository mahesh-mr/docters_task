part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool isloding,
    LoginModel? model,
    required Option<Either<MainFailure, LoginModel>>
        registerFaileurOrSuccessOption,
  }) = _Initial;

  factory LoginState.initial()=>const LoginState(isloding: false,
   registerFaileurOrSuccessOption:  None());
}
