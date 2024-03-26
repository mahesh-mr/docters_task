import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/register/model/register_model.dart';
import 'package:mediezytech_task/domain/register/register_service.dart';
import 'package:mediezytech_task/infrastructure/core/api_end_pont.dart';
import 'package:mediezytech_task/infrastructure/core/token/token.dart';

@LazySingleton(as: RegisterService)
class RegisterServiceImpl implements RegisterService {
  @override
  Future<Either<MainFailure, RegisterModel>> registerService({
    required String name,
    required String secondNmae,
    required String email,
    required String mobile,
    required String password,
    required String location,
    required String genter,
    required String dob,
  }) async {
    try {
      final response = await Dio(BaseOptions(
        contentType: 'application/x-www-form-urlencoded',
      )).post(
        ApiEndPoints.register,
        data: {
          "firstname": name,
          "secondname": secondNmae,
          "mobileNo": mobile,
          "email": email,
          "password": password,
          "location": location,
          "gender": genter,
          "dateofbirth": dob,
        },
      );
      // print(response);
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        //  final result = RegisterModel.fromJson(response.data);

        final result = RegisterModel.fromJson(response.data);
        // Map<String, dynamic> user = {
        //   "status": response.data['message'],
        //   // 'id': response.data['data']['user']['id'].toString(),
        // };
        //  GetLocalStorage.saveToken(user);
        // String? status = GetLocalStorage.getUserIdAndToken('status');
        print("result : $result");
        // print("status store : $status");
        return Right(result);
      } else {
        return Left(MainFailure.clientFailure());
      }
      // ignore: deprecated_member_use
    } on DioError catch (e) {
      return Left(MainFailure.serverFailure());
    }
  }
}
