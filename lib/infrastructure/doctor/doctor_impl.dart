import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/doctor/doctor_service.dart';
import 'package:mediezytech_task/domain/doctor/model/all_doctor.dart';
import 'package:mediezytech_task/domain/doctor/model/doctor_model.dart';
import 'package:mediezytech_task/infrastructure/core/api_end_pont.dart';
import 'package:mediezytech_task/infrastructure/core/token/token.dart';

@LazySingleton(as: DoctorRepo)
class DoctorRepository implements DoctorRepo {
  @override
  Future<Either<MainFailure, List<AllDoctor>>> getdoctersData() async {
    String? token = GetLocalStorage.getUserIdAndToken('token');
    print("token : $token");
    try {
      var response = await Dio(BaseOptions(
        headers: {'Authorization': 'Bearer $token'},
        //contentType: 'application/x-www-form-urlencoded',
      )).get(
        ApiEndPoints.allDoctor,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = DoctorModel.fromJson(response.data);
        // for (final row in response.data) {
        //   userList.add(AllDoctor.fromJson(row as Map<String, dynamic>));
        // }
        print(result);
        return right(result.allDoctors!);
      } else {
        print(e);
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
