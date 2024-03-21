import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:mediezytech_task/application/radio/radio_bloc.dart';
import 'package:mediezytech_task/application/register/register_bloc.dart';
import 'package:mediezytech_task/core/colors.dart';
import 'package:mediezytech_task/presentation/login/login.dart';
import 'package:mediezytech_task/widget/custom_form.dart';
import 'package:mediezytech_task/presentation/register/widget/radio_button.dart';
import 'package:mediezytech_task/widget/submit_button.dart';

// ignore: must_be_immutable
class Register extends StatelessWidget {
  Register({super.key});

  GlobalKey<FormState> fomkey = GlobalKey<FormState>();

  TextEditingController firstNmaeController = TextEditingController();

  TextEditingController secondNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController mobileController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController locationController = TextEditingController();

  TextEditingController genterController = TextEditingController();

  TextEditingController dobController = TextEditingController();

  late int genter;
  late String pickDate;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // BlocProvider.of<RadioBloc>(context)
      //     .add(const RadioEvent.started(selectedGender: context));
    });
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: background,
      body: BlocConsumer<RegisterBloc, RegisterState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Form(
                key: fomkey,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 150,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomFormfeld(
                                controller: firstNmaeController,
                                textinputType: TextInputType.name,
                                labelText: "First Nmae",
                                hintText: "First Nmae"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: CustomFormfeld(
                                controller: secondNameController,
                                textinputType: TextInputType.name,
                                labelText: "Second Nmae",
                                hintText: "Second Nmae"),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomFormfeld(
                          controller: emailController,
                          textinputType: TextInputType.emailAddress,
                          labelText: "Email",
                          hintText: "Email"),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: CustomFormfeld(
                                controller: mobileController,
                                textinputType: TextInputType.phone,
                                labelText: "Phone",
                                hintText: "Phone"),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: CustomFormfeld(
                                controller: locationController,
                                textinputType: TextInputType.text,
                                labelText: "Location",
                                hintText: "Location"),
                          ),
                        ],
                      ),
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
                      BlocProvider(
                        create: (context) => RadioBloc(),
                        child: BlocBuilder<RadioBloc, RadioState>(
                          builder: (context, state) {
                            print("genter ${state.selectedGender}");
                            genter = state.selectedGender;
                            return Container(
                              height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(color: appGrey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Text('Genter :'),
                                  RadioButton(
                                    value: 1,
                                    groupValue: state.selectedGender,
                                    text: 'Male',
                                    onChanged: (value) {
                                      print(state.selectedGender);
                                      context.read<RadioBloc>().add(
                                          RadioEvent.genderChanged(value!));
                                    },
                                  ),
                                  RadioButton(
                                    value: 2,
                                    groupValue: state.selectedGender,
                                    text: 'Femaile',
                                    onChanged: (value) {
                                      print(state.selectedGender);
                                      context.read<RadioBloc>().add(
                                          RadioEvent.genderChanged(value!));
                                    },
                                  ),
                                  RadioButton(
                                    value: 3,
                                    groupValue: state.selectedGender,
                                    text: 'Other',
                                    onChanged: (value) {
                                      print(state.selectedGender);
                                      context.read<RadioBloc>().add(
                                          RadioEvent.genderChanged(value!));
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: appGrey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                                height: size.height * 0.04,
                                width: size.width * 0.73,
                                // color: Colors.amber,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 0, top: 5),
                                  child: BlocBuilder<RadioBloc, RadioState>(
                                    builder: (context, state) {
                                      pickDate = state.selectedDate != null
                                          ? DateFormat('yyyy-MM-dd')
                                              .format(state.selectedDate!)
                                          : 'Date of Birth';
                                      return Text(
                                        pickDate,
                                        style:
                                            GoogleFonts.inter(color: appBlack),
                                      );
                                    },
                                  ),
                                )),
                            SizedBox(height: size.height * 0.02),
                            SizedBox(
                              height: 20,
                              width: 20,
                              child: GestureDetector(
                                onTap: () async {
                                  final DateTime? picked = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(1900),
                                    lastDate: DateTime.now(),
                                  );
                                  if (picked != null) {
                                    BlocProvider.of<RadioBloc>(context)
                                        .add(RadioEvent.changeDte(picked));
                                  }
                                },
                                child: const Icon(
                                  Icons.calendar_month,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SubmitButton(
                        onTap: () {
                          bool isValid = fomkey.currentState!.validate();
                          if (isValid) {
                            BlocProvider.of<RegisterBloc>(context)
                                .add(RegisterEvent.started(
                              name: firstNmaeController.text,
                              secondNmae: secondNameController.text,
                              email: emailController.text,
                              mobile: mobileController.text,
                              password: passwordController.text,
                              location: locationController.text,
                              genter: genter.toString(),
                              dob: pickDate,
                            ));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ));
                          }
                        },
                        loding: state.isloding,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
