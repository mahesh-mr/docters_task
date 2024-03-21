import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mediezytech_task/application/doctor/doctor_bloc.dart';
import 'package:mediezytech_task/application/login/login_bloc.dart';
import 'package:mediezytech_task/application/radio/radio_bloc.dart';
import 'package:mediezytech_task/application/register/register_bloc.dart';
import 'package:mediezytech_task/domain/core/di/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediezytech_task/infrastructure/core/token/token.dart';
import 'package:mediezytech_task/presentation/doctor/doctor.dart';
import 'package:mediezytech_task/presentation/login/login.dart';
import 'package:mediezytech_task/presentation/register/register.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    String? token = GetLocalStorage.getUserIdAndToken("token");
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<RegisterBloc>(),
          ),
          BlocProvider(
            create: (context) => RadioBloc(),
          ),
          BlocProvider(
            create: (context) => getIt<LoginBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<DoctorBloc>(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,
          home: token == null ? Login() : Doctor(),
        ));
  }
}
