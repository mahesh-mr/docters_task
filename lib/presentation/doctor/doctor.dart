import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:mediezytech_task/application/doctor/doctor_bloc.dart';
import 'package:mediezytech_task/core/strings.dart';
import 'package:mediezytech_task/infrastructure/core/token/token.dart';
import 'package:mediezytech_task/infrastructure/location_service/location.dart';
import 'package:mediezytech_task/presentation/doctor/widget/doctor_tail.dart';
import 'package:mediezytech_task/presentation/doctor/widget/home_button.dart';
import 'package:mediezytech_task/presentation/login/login.dart';

import '../../core/colors.dart';

class Doctor extends StatefulWidget {
  const Doctor({super.key});

  @override
  State<Doctor> createState() => _DoctorState();
}

class _DoctorState extends State<Doctor> {
  String location = '';

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DoctorBloc>(context).add(const DoctorEvent.started());
    });
    // CurrentLocation.determinePosition();
      BlocProvider.of<DoctorBloc>(context).add(const DoctorEvent.started());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: apphomeBody,
      appBar: AppBar(
        backgroundColor: apphomeBody,
        leading: IconButton(
            onPressed: () {
              GetLocalStorage.removeUserTokenAndUid();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ));
            },
            icon: Icon(Icons.logout)),
        actions: const [
          Row(
            children: [
              Icon(
                Icons.place,
                color: appGreen,
              ),
              Text("location")
              // BlocBuilder<RadioBloc, RadioState>(
              //   builder: (context, state) {
              //     return Text(
              //       state.location!,
              //       style: const TextStyle(color: Colors.black, fontSize: 16),
              //     );
              //   },
              // ),
            ],
          )
        ],
        centerTitle: true,
        title: Text(
          'Doctors Near You',
          style: black21WBold,
        ),
      ),
      body: BlocConsumer<DoctorBloc, DoctorState>(
        listener: (context, state) {
          if (state.isLoding) {
            const Center(
              child: CircularProgressIndicator(
                color: appPrymary,
              ),
            );
          }
        },
        builder: (context, state) {
          return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: state.model.length,
                  itemBuilder: (context, index) {
                    final data = state.model[index];
                    return Container(
                      height: 280,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: background,
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 95,
                              width: double.infinity,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                //crossAxisAlignment: ,
                                children: [
                                  SizedBox(
                                    height: 90,
                                    width: 80,
                                    child: Image.network(
                                      data.docterImage.toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dr ${data.firstname.toString()} ${data.secondname.toString()}",
                                          style: black16WBold,
                                        ),
                                        Text(
                                          data.specialization.toString(),
                                          style: grey14WBold,
                                        ),
                                        Text(
                                          data.mainHospital.toString(),
                                          style: grey14WBold,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Location : ",
                                              style: grey14WBold,
                                            ),
                                            Text(
                                              data.location.toString(),
                                              style: black14Bold,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              "Next Available at",
                              style: black16WBold,
                            ),
                            SizedBox(
                              height: 100,
                              child: ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: data.clinics!.length,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      const Icon(
                                        Icons.location_city,
                                        color: appGrey,
                                      ),
                                      Text(
                                        "${data.clinics![index].clinicName.toString()} -${data.clinics![index].availableTokenCount.toString()} Slots available ",
                                        style: grey14WBold,
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            const Row(
                              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: HomeButton(
                                      title: "View Profile",
                                      backgroundColor: background,
                                      foregroundColor: appPrymary),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: HomeButton(
                                      title: "Book Clinic Visit",
                                      backgroundColor: appPrymary,
                                      foregroundColor: background),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }));
        },
      ),
      // ),
    );
  }
}
