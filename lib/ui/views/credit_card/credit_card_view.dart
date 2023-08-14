// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/background_image.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import '../../widgets/top_banner.dart';
import 'credit_card_viewmodel.dart';

class CreditCardView extends StackedView<CreditCardViewModel> {
  const CreditCardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreditCardViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const TopBanner(
                  text: "compareCreditCard",
                  image: 'assets/images/best_deals.jpg'),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: 'knowMoreAboutYou',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        CustomText(
                          text: 'mandatoryField',
                          fontSize: 10,
                        ),
                        verticalSpaceSmall,
                        DropdownTextfield(
                          value: viewModel.cardProvider,
                          onChanged: viewModel.setCardProvider,
                          options: viewModel.cardProviderList,
                          titleText: 'cardProviders',
                        ),
                        verticalSpaceSmall,
                        DropdownTextfield(
                          value: viewModel.cardType,
                          onChanged: viewModel.setCard,
                          options: viewModel.cardList,
                          titleText: 'card',
                        ),
                        verticalSpaceSmall,
                        CustomTextField(
                          hintText: 'hk',
                          titleText: 'annualIncome',
                          controller: viewModel.annualIncomeCtrl,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
              horizontalSpaceTiny,
              SubmitButton(
                image: myIcons.search,
                imgwidth: 12,
                onPress: viewModel.navigateToCreditCardResult,
                text: 'search',
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
  CreditCardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CreditCardViewModel();
}
