import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../common/ui_helpers.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';
import 'credit_card_viewmodel.dart';

class CreditCardView extends StackedView<CreditCardViewModel> {
  const CreditCardView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CreditCardViewModel viewModel,
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
              Container(
                height: 170,
                width: width * 1,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/best_deals.jpg'),
                      fit: BoxFit.fitWidth),
                ),
              ),
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
                          text: 'nandatoryField',
                          fontSize: 10,
                        ),
                        verticalSpaceSmall,
                        DropdownTextfield(
                          onChanged: (String) {},
                          options: [],
                          titleText: 'cardProviders',
                        ),
                        verticalSpaceSmall,
                        DropdownTextfield(
                          onChanged: (String) {},
                          options: [],
                          titleText: 'card',
                        ),
                        verticalSpaceSmall,
                        CustomTextField(
                          hintText: 'hk\$',
                          titleText: 'annualIncome',
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
