import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/ui_helpers.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import 'credit_result_viewmodel.dart';

class CreditCardWiget extends ViewModelWidget<CreditResultViewModel> {
  const CreditCardWiget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CreditResultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(myIcons.creditCardFrame,width: 80,),
                      horizontalSpaceTiny,
                      Container(
                        width: width*0.45,
                      
                        child: CustomText(text: 'DBs Eminent Visa Platinum Card',fontSize: 18,fontWeight: FontWeight.w700,maxLines: 2,textOverflow: TextOverflow.ellipsis,),
                      )
                      
                    ],
                  )
                ],
              )
            ),
          ),
        );
      },
    );
  }
}
