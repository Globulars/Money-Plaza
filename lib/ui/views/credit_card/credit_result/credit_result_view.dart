import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/views/credit_card/credit_result/result_card_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../common/app_colors.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/bottom_bar.dart';
import '../../../widgets/common/background_image.dart';
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
        const BackgroundImage(),
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
                  text: 'filter',
                  fontSize: 18,
                  onPress: viewModel.showCreditFilter,
                ),
              ),
              const Divider(
                color: darkGreenHeigh,
                height: 1.0,
                thickness: 3,
              ),
              verticalSpaceSmall,
              const CreditCardWiget(),
              verticalSpaceMedium
            ],
          ),
        ),
        bottomBar(
          Row(
            children: [
              ReturnButton(
                imageLeft: myIcons.returnIcon1,
                imgwidth: 12,
                text: 'return',
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
