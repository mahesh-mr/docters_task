import 'package:dartz/dartz.dart';
import 'package:mediezytech_task/domain/login/model/login_model.dart';

import '../core/failures/main_failure.dart';

abstract class LoginService {
  Future<Either<MainFailure, LoginModel>> loginService({
    required String email,
    required String password,
  });
}
