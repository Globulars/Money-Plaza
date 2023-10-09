import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../../services/Models/loan_card.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/custom_text.dart';
import '../../loan_viewmodel.dart';

class CompareHead extends ViewModelWidget<LoanViewModel> {
  final List<LoanCard> compareData;

  const CompareHead({required this.compareData, Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Row(
          children: [
            ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: compareData.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: width * 0.48,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          viewModel.compareData[index].company?.signLogoUrl!
                                      .substring(viewModel.compareData[index]
                                              .company!.signLogoUrl!.length -
                                          3) !=
                                  "svg"
                              ? Image.network(
                                  viewModel.compareData[index].company
                                          ?.signLogoUrl ??
                                      "",
                                  height: 30,
                                )
                              : SvgPicture.network(
                                  height: 30,
                                  viewModel.compareData[index].company
                                          ?.signLogoUrl ??
                                      ""),
                          verticalSpaceTiny,
                          CustomText(
                            text: viewModel.compareData[index].company?.name ??
                                "",
                            localization: false,
                            textOverflow: TextOverflow.ellipsis,
                            maxLines: 1,
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
                            onPress: viewModel.navigateToSurveySplashView,
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
