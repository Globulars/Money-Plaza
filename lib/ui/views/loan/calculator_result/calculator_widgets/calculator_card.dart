import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';
import 'package:stacked/stacked.dart';
import '../../../../widgets/common/icon_box_btn/submit_button.dart';
import '../calculator_result_viewmodel.dart';

class CalculatorCard extends ViewModelWidget<CalculatorResultViewModel> {
  const CalculatorCard({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CalculatorResultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(myIcons.weLend),
                    verticalSpaceTiny,
                    CustomText(
                      text: "WeLend",
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                        text:
                            "Borrowing Amonnt \$10,000 - \$700,000 Tenor 12 - 60 Months",
                        color: Colors.black87,
                        fontSize: 15),
                    verticalSpaceTiny,
                    CustomText(
                        text:
                            "[Limited Time Offer! Until 7 March 2023] Succss withdraw the specified loan amount and enjoy up to HK\$14,200 reward!",
                        color: Colors.black54,
                        fontSize: 14),
                    verticalSpaceTiny,
                    CustomText(
                      text: "Money Lender's Licence No.#1193/2022",
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width * 0.3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "2.75%",
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                    verticalSpaceTiny,
                    CustomText(
                      text: "*This is the lowest annual interest rate",
                      color: Colors.black,
                      fontSize: 12,
                    ),
                    verticalSpaceSmall,
                    SubmitButton(
                      image: myIcons.compare2,
                      boxColor: Colors.transparent,
                      text: 'Compare',
                      color: Colors.black87,
                      fontSize: 18,
                    ),
                    verticalSpaceSmall,
                    SubmitButton(
                      image: myIcons.apply,
                      text: 'Apply',
                      fontSize: 18,
                      height: 40,
                    ),
                    verticalSpaceSmall,
                    SubmitButton(
                      image: myIcons.detail,
                      boxColor: Colors.transparent,
                      text: 'Details',
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
