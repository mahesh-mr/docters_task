
import 'package:dartz/dartz.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/doctor/model/all_doctor.dart';
import 'package:mediezytech_task/domain/doctor/model/doctor_model.dart';

abstract class DoctorRepo {
  Future<Either<MainFailure, List<AllDoctor>>> getdoctersData();
}
