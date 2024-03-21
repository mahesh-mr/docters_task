import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:mediezytech_task/domain/core/failures/main_failure.dart';
import 'package:mediezytech_task/domain/login/login_service.dart';
import 'package:mediezytech_task/domain/login/model/login_model.dart';
import 'package:mediezytech_task/infrastructure/core/api_end_pont.dart';
import 'package:mediezytech_task/infrastructure/core/token/token.dart';
import 'package:mediezytech_task/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

@LazySingleton(as: LoginService)
class LoginServiceImpl implements LoginService {
  @override
  Future<Either<MainFailure, LoginModel>> loginService(
      {required String email, required String password}) async {
    
    try {
      final response = await Dio(BaseOptions(
        contentType: 'application/x-www-form-urlencoded',
      )).post(
        ApiEndPoints.login,
        data: {
          "email": email,
          "password": password,
        },
      );
      print(response);
      log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = LoginModel.fromJson(response.data);
        Map<String, dynamic> user = {
          "token": response.data['token'],
          // 'id': response.data['data']['user']['id'].toString(),
        };
        GetLocalStorage.saveToken(user);
        String? token = GetLocalStorage.getUserIdAndToken('token');
        print(result);
        print(token);
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
