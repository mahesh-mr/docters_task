import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mediezytech_task/application/doctor/doctor_bloc.dart';
import 'package:mediezytech_task/application/login/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mediezytech_task/application/radio/radio_bloc.dart';
import 'package:mediezytech_task/infrastructure/location_service/location.dart';
import 'package:mediezytech_task/presentation/doctor/doctor.dart';

import '../../core/colors.dart';
import '../../widget/custom_form.dart';
import '../../widget/submit_button.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});

  GlobalKey<FormState> fomkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String? address;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: fomkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomFormfeld(
                      controller: emailController,
                      textinputType: TextInputType.emailAddress,
                      labelText: "Email",
                      hintText: "Email"),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomFormfeld(
                      controller: passwordController,
                      textinputType: TextInputType.text,
                      labelText: "Password",
                      hintText: "Password"),
                  const SizedBox(
                    height: 10,
                  ),
                  SubmitButton(
                    onTap: () async {
                      bool isValid = fomkey.currentState!.validate();
                      if (isValid) {
                        BlocProvider.of<LoginBloc>(context)
                            .add(LoginEvent.started(
                          email: emailController.text,
                          password: passwordController.text,
                        ));

                        // Position position =
                        //     await CurrentLocation.determinePosition();

                        // CurrentLocation.GetAddressFromLatLong(
                        //     position, address!);
                        // print(address);
                        // BlocProvider.of<DoctorBloc>(context)
                        //     .add(const DoctorEvent.started());
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Doctor(),
                            ));
                      }
                    },
                    loding: state.isloding,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}