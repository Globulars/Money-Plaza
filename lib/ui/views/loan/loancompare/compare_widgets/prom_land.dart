import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/common/icon_box_btn/text.dart';
import '../loancompare_viewmodel.dart';

class PromiseLand extends ViewModelWidget<LoancompareViewModel> {
  const PromiseLand({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoancompareViewModel viewModel,
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
                  Image.asset(
                    myIcons.promise,
                    width: 90,
                  ),
                  verticalSpaceTiny,
                  CustomText(
                    text: 'Promise',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  verticalSpaceTiny,
                  SubmitButton(
                    image: myIcons.apply,
                    height: 40,
                    width: 80,
                    text: 'Apply',
                    imgwidth: 12,
                  )
                ],
              ),
              horizontalSpaceLarge,
              Column(
                children: [
                  Image.asset(
                    myIcons.weLend,
                    width: 90,
                  ),
                  verticalSpaceTiny,
                  CustomText(
                    text: 'WeLand',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  verticalSpaceTiny,
                  SubmitButton(
                    image: myIcons.apply,
                    height: 40,
                    width: 80,
                    text: 'Apply',
                    imgwidth: 12,
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
