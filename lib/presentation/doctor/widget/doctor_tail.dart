// // ignore_for_file: public_member_api_docs, sort_constructors_first

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:mediezytech_task/application/doctor/doctor_bloc.dart';

// import 'package:mediezytech_task/core/strings.dart';
// import 'package:mediezytech_task/presentation/doctor/widget/home_button.dart';

// import '../../../core/colors.dart';

// class DoctersTail extends StatelessWidget {
//   const DoctersTail({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       BlocProvider.of<DoctorBloc>(context).add(const DoctorEvent.started());
//     });
//     return BlocConsumer<DoctorBloc, DoctorState>(
//       listener: (context, state) {
//         if (state.isLoding) {
//           Center(
//             child: CircularProgressIndicator(
//               color: appPrymary,
//             ),
//           );
//           if (state.model == null) {
//             Center(
//               child: CircularProgressIndicator(
//                 color: appPrymary,
//               ),
//             );
//           }
//         }
//       },
//       builder: (context, state) {
//         return ListView.separated(
//             shrinkWrap: true,
//             separatorBuilder: (context, index) => const SizedBox(
//                   height: 10,
//                 ),
//             itemCount: state.model!.allDoctors!.length,
//             itemBuilder: (context, index) {
//               final data = state.model!.allDoctors![index];
//               return Container(
//                 height: 300,
//                 width: double.infinity,
//                 decoration: BoxDecoration(
//                   color: background,
//                   borderRadius: BorderRadius.circular(
//                     15,
//                   ),
//                 ),
//                 child: Padding(
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         height: 95,
//                         width: double.infinity,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           //crossAxisAlignment: ,
//                           children: [
//                             Container(
//                               height: 90,
//                               width: 80,
//                               color: appGreen,
//                               child: Image.network(
//                                 data.docterImage.toString(),
//                               ),
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Expanded(
//                               child: SizedBox(
//                                 height: 110,
//                                 width: double.infinity,
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       "Dr ${data.firstname.toString()}, ${data.secondname.toString()}",
//                                       style: black16WBold,
//                                     ),
//                                     Text(
//                                       data.specialization.toString(),
//                                       style: grey14WBold,
//                                     ),
//                                     Text(
//                                       data.mainHospital.toString(),
//                                       style: grey14WBold,
//                                     ),
//                                     Row(
//                                       children: [
//                                         Text(
//                                           "Location : ",
//                                           style: grey14WBold,
//                                         ),
//                                         Text(
//                                           data.location.toString(),
//                                           style: black14Bold,
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       Text(
//                         "Next Available at",
//                         style: black16WBold,
//                       ),
//                       // Expanded(
//                       //   child: ListView.builder(
//                       //     itemCount:
//                       //         state.model!.allDoctors![index].clinics!.length!,
//                       //     shrinkWrap: true,
//                       //     itemBuilder: (context, index) {
//                       //       return Row(
//                       //         children: [
//                       //           const Icon(
//                       //             Icons.location_city,
//                       //             color: appGrey,
//                       //           ),
//                       //           Text(
//                       //             "${data.clinics![index].clinicName.toString()} -${data.clinics![index].availableTokenCount.toString()} Slots available ",
//                       //             style: grey14WBold,
//                       //           ),
//                       //         ],
//                       //       );
//                       //     },
//                       //   ),
//                       // ),
//                       const Row(
//                         //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Expanded(
//                             child: HomeButton(
//                                 title: "View Profile",
//                                 backgroundColor: background,
//                                 foregroundColor: appPrymary),
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           Expanded(
//                             child: HomeButton(
//                                 title: "Book Clinic Visit",
//                                 backgroundColor: appPrymary,
//                                 foregroundColor: background),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               );
//             });
//       },
//     );
//   }
// }
