import 'package:dartz/dartz.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/register/model/register_model.dart';

abstract class RegisterService {
  Future<Either<MainFailure, RegisterModel>> registerService({
  required String name,
    required String secondNmae,
    required String email,
    required String mobile,
    required String password,
    required String location,
    required String genter,
    required String dob,
  });
}
