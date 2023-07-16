import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import '../../../../widgets/common/icon_box_btn/text.dart';
import '../calculator_result_viewmodel.dart';

class CalDataTable extends ViewModelWidget<CalculatorResultViewModel> {
  const CalDataTable({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CalculatorResultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
          columnSpacing: 3,
         dataRowMinHeight: 3,
         dataRowMaxHeight: 20,
         horizontalMargin: 0,
         
            columns: [
              // Set the name of the column
              DataColumn(label: SizedBox(
                width: 40,
                child: CustomText(text:'Period',textAlign: TextAlign.start,color: darkGreenHeigh,fontSize: 10,)),),
              DataColumn(label: SizedBox(
                width: 60,
                // height: 200,
                
                child: CustomText(text:'Monthly\nRepayment\nAmount\n(HKD)',textAlign: TextAlign.center,color: darkGreenHeigh,fontSize: 10,)),),
              DataColumn(label: SizedBox( width: 60,child: CustomText(text:'Interest\namount\n(HKD)',textAlign: TextAlign.center,color: darkGreenHeigh,fontSize: 10,)),),
              DataColumn(label: SizedBox( width: 60,child: CustomText(text:'Principal\nAmount\n(HKD)',textAlign: TextAlign.center,color: darkGreenHeigh,fontSize: 10,)),),
               DataColumn(label: SizedBox( width: 60,child: CustomText(text:'Remaining\nAmount\n(HKD)',textAlign: TextAlign.center,color: darkGreenHeigh,fontSize: 10,)),),
            ],
            rows:[
              // Set the values to the columns 
              DataRow(cells: [
                DataCell(SizedBox( width: 20,child: CustomText(text:'1',textAlign: TextAlign.center,fontSize: 10,))),
                DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$6.36.777",textAlign: TextAlign.center,fontSize: 8,)))),
                DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$65.36.777",textAlign: TextAlign.center,fontSize: 8,)))),
                DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$65.36.777",textAlign: TextAlign.center,fontSize: 8,)))),
                 DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$654.36.777",textAlign: TextAlign.center,fontSize: 8,)))),
              ]),
              DataRow(cells: [
                DataCell(SizedBox( width: 20,child: CustomText(text:'2',textAlign: TextAlign.center,fontSize: 10,))),
                DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$6.36.777",textAlign: TextAlign.center,fontSize: 8)))),
                DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$65.36.777",textAlign: TextAlign.center,fontSize: 8,)))),
                DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$65.36.777",textAlign: TextAlign.center,fontSize: 8,)))),
                 DataCell(SizedBox(width: 60,child: Center(child:CustomText(text:"\$654.36.777",textAlign: TextAlign.center,fontSize: 8,)))),
              ]),
            ]
          ),
        
    );
  }
}