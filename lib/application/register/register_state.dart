part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
      required bool isloding,
     RegisterModel? model,
     required Option<Either<MainFailure, RegisterModel>>
       registerFaileurOrSuccessOption,
  })= _Initial;
  
  factory RegisterState.initial()=>
  const RegisterState(isloding: false,
  registerFaileurOrSuccessOption: None() );
  
  
  
} 
                                                   