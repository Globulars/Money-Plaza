// Filter Dialog code

// Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//         child: Column(
//           children:[
//             SubBar(
//               height: 40,
//               color: Colors.white,
//               width: width * 1,
//               image: myIcons.filter,
//               text: 'Filter',
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//               btmLeftRadius: 0,
//               btmRightRadius: 0,
//               topimage: myIcons.cancel,
//             ),
//             verticalSpaceTiny,
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 6),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   CustomText(text: 'Borrowing Amount',fontWeight: FontWeight.w600,),
//                  CustomTextField(hintText:'HK\$',height: 40,),
//                   verticalSpaceTiny,
//                    CustomText(text: 'Repayment Type',fontWeight: FontWeight.w600,),
//                   verticalSpaceTiny,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                     ReturnButton(height: 40,text: 'Term Loan',width: width*0.36,),
//                     SubmitButton(height: 40,text: 'min-pay',width: width*0.36,)
//                     ],
//                   ),
//                   verticalSpace(5),
//                    Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                     ReturnButton(height: 40,text: 'Interest only',width: width*0.36,),
//                     ReturnButton(height: 40,text: 'Prepaid interest',width: width*0.36,)
//                     ],
//                   ),
//                    verticalSpaceTiny,
//                    CustomText(text: 'Repayment Period(Monthly)',fontWeight: FontWeight.w600,),
//                   verticalSpaceTiny,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       ReturnButton(height: 40,text: '6',width: width*0.23,),
//                     ReturnButton(height: 40,text: '12',width: width*0.23,),
//                     SubmitButton(height: 40,text: '24',width: width*0.23,)
//                     ],
//                   ),
//                   verticalSpace(5),
//                    Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       ReturnButton(height: 40,text: '36',width: width*0.23,),
//                     ReturnButton(height: 40,text: '48',width: width*0.23,),
//                     ReturnButton(height: 40,text: '60',width: width*0.23,)
//                     ],
//                   ),
//                   verticalSpaceSmall,
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       SubmitButton(boxColor: Colors.transparent,image:myIcons.iconPowerReset ,text: 'Reset all',color: darkGreenLight,),
//                       SubmitButton(text: 'Apply',height: 40,width: 80,),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),

// calculator dialog

//  SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//           child: Column(
//             children:[
//               SubBar(
//                 height: 40,
//                 color: Colors.white,
//                 width: width * 1,
//                 image: myIcons.calculator,
//                 text: 'Interest Calculator',
//                 fontSize: 16,
//                 fontWeight: FontWeight.w500,
//                 btmLeftRadius: 0,
//                 btmRightRadius: 0,
//                 topimage: myIcons.cancel,
//               ),
//               verticalSpaceTiny,
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 6),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     CustomText(text: 'Borrowing Amount',fontWeight: FontWeight.w600,),
//                     CustomTextField(hintText:'HK\$',height: 40,),
//                     verticalSpaceTiny,
//                      CustomText(text: 'Repayment Method',fontWeight: FontWeight.w600,),
//                     verticalSpaceTiny,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                       ReturnButton(height: 40,text: 'Fixed Rate Term Loans',width: width*0.42,),
//                       SubmitButton(height: 40,text: 'Resolving Loans',width: width*0.32,)
//                       ],
//                     ),
//                     verticalSpace(5),

//                       ReturnButton(height: 40,text: 'Prepaaid Interest(Commerical Loans)',width: width*1,),

//                      verticalSpaceTiny,
//                      CustomText(text: 'Calculation Items',fontWeight: FontWeight.w600,),
//                     verticalSpaceTiny,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         ReturnButton(height: 40,text: 'Tenor',width: width*0.36,),
//                       SubmitButton(height: 40,text: 'APR',width: width*0.36,)
//                       ],
//                     ),
//                     verticalSpace(5),
//                      ReturnButton(height: 40,text: 'Monthly Repayment Amount',width: width*1,),

//                     verticalSpaceTiny,
//                      verticalSpaceTiny,CustomText(text: 'MonthlyRepayment Amount',fontWeight: FontWeight.w600,),
//                       CustomTextField(hintText:'HK\$',height: 40,),

//                      verticalSpaceTiny,
//                      CustomText(text: 'Interest Rate',fontWeight: FontWeight.w500,),
//                      CustomTextField(hintText:'%',height: 40,),

//                     verticalSpaceSmall,
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         SubmitButton(boxColor: Colors.transparent,image:myIcons.iconPowerReset ,text: 'Reset all',color: darkGreenLight,),
//                         SubmitButton(text: 'Calculate Now',height: 40,width: 120,),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
