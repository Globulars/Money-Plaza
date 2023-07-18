import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/views/credit_card/credit_result/result_card_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../widgets/common/icon_box_btn/sub_bar.dart';
import 'credit_result_viewmodel.dart';

class CreditResultView extends StackedView<CreditResultViewModel> {
  const CreditResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreditResultViewModel viewModel,
    Widget? child,
  ) {
   final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: SubBar(
                  btmLeftRadius: 0,
                  btmRightRadius: 0,
                  image: myIcons.setting,
              
                  text: 'Filter',
                  fontSize: 18,
                ),
              ),
              const Divider(color:darkGreenHeigh, height: 1.0,thickness: 3,),
              verticalSpaceSmall,
              const CreditCardWiget(),
             
            ],
          ),
        ),
        bottomBar(
          Row(
            children: [
              ReturnButton(
                imageLeft: myIcons.returnIcon1,
                imgwidth: 12,
                text: 'Return',
                height: 40,
                width: 80,
              ),
           
            ],
          ),
        ),
      ],
    );
  }

  @override
  CreditResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreditResultViewModel();
}
