import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../../services/Models/loan_card.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../../loan_viewmodel.dart';

class CompareHead extends ViewModelWidget<LoanViewModel> {
  final List<LoanCard> compareData;

  const CompareHead({required this.compareData, Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Image.network(
                    viewModel.compareData[0].company?.signLogoUrl ?? "",
                    width: 80,
                  ),
                  verticalSpaceTiny,
                  CustomText(
                    text: viewModel.compareData[0].company?.name ?? "",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  verticalSpaceTiny,
                  SubmitButton(
                    image: myIcons.apply,
                    height: 40,
                    width: 80,
                    text: 'apply',
                    imgwidth: 12,
                  )
                ],
              ),
              horizontalSpaceLarge,
              Column(
                children: [
                  Image.network(
                    viewModel.compareData[1].company?.signLogoUrl ?? "",
                    width: 80,
                  ),
                  verticalSpaceTiny,
                  CustomText(
                    text: viewModel.compareData[1].company?.name ?? "",
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  verticalSpaceTiny,
                  SubmitButton(
                    image: myIcons.apply,
                    height: 40,
                    width: 80,
                    text: 'apply',
                    imgwidth: 12,
                    onPress: viewModel.navigateToApplyconfirm,
                  )
                ],
              ),
            ],
          ),
          verticalSpaceSmall,
        ],
      ),
    );
  }
}
