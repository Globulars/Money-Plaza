// import 'package:flutter/material.dart';
// import 'package:money_plaza/ui/common/app_icons.dart';
// import '../../common/app_colors.dart';
// import '../../common/ui_helpers.dart';
// import '../../views/loan/widgets/filter_bottom_bar.dart';
// import 'icon_box_btn/text.dart';

// Widget resultLoanTop(context) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Column(
//         // crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const FilterBottomBar(),
//           const Divider(
//             color: darkGreenHeigh,
//             height: 5.0,
//             thickness: 8,
//           ),
//           // verticalSpaceSmall,
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Image.asset(
//                 myIcons.cilSortDecending,
//                 width: 50,
//               ),
//               horizontalSpaceTiny,
//               SizedBox(
//                 height: 40.0,
//                 width: MediaQuery.of(context).size.width * 0.84,
//                 child: ListView.builder(
//                   physics: const ClampingScrollPhysics(),
//                   shrinkWrap: true,
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 15,
//                   itemBuilder: (BuildContext context, int index) => Padding(
//                     padding: const EdgeInsets.only(right: 5),
//                     child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(5),
//                             border:
//                                 Border.all(color: darkGreenHeigh, width: 1)),
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(horizontal: 4),
//                           child: Center(
//                               child: CustomText(
//                             text: 'loanAmount',
//                             color: darkGreenHeigh,
//                           )),
//                         )),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           // verticalSpaceTiny,
//           Padding(
//             padding: const EdgeInsets.only(right: 8),
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: CustomText(
//                 text: '88results',
//                 color: Colors.black,
//                 fontSize: 15,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//           verticalSpaceTiny,
//           const Divider(
//             color: Colors.black,
//             height: 2.0,
//             thickness: 1,
//           ),
//         ],
//       )
//     ],
//   );
// }
