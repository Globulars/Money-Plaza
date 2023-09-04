import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/services/Models/loan_tags.dart';
import 'package:money_plaza/ui/views/loan/loan_viewmodel.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/text.dart';

class LoanTagsListView extends ViewModelWidget<LoanViewModel> {
  const LoanTagsListView({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    LoanViewModel viewModel,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            horizontalSpaceSmall,
            Image.asset(
              myIcons.cilSortDecending,
              width: 25,
            ),
            horizontalSpaceTiny,
            viewModel.loanTagsList.isNotEmpty
                ? Expanded(
                    child: SizedBox(
                      height: 30.0,
                      child: ListView.builder(
                          physics: const ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: viewModel.loanTagsList.length,
                          itemBuilder: (BuildContext context, int index) {
                            LoanTags loanTags = viewModel.loanTagsList[index];
                            return InkWell(
                              onTap: () {
                                viewModel.setFeatures(loanTags);
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: loanTags.selected ?? false
                                            ? darkGreenHeigh
                                            : Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: darkGreenHeigh, width: 1)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4),
                                      child: Center(
                                          child: CustomText(
                                        text: loanTags.name ?? "",
                                        color: loanTags.selected ?? false
                                            ? Colors.white
                                            : darkGreenHeigh,
                                        fontSize: 12,
                                      )),
                                    )),
                              ),
                            );
                          }),
                    ),
                  )
                : Container()
          ],
        ),
        verticalSpaceTiny,
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomText(
                text: '${viewModel.loanCardList.length} ',
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
              CustomText(
                text: 'results',
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ],
          ),
        ),
        const Divider(
          color: Colors.black,
          height: 0,
          thickness: 1,
        ),
        verticalSpaceTiny
      ],
    );
  }
}
