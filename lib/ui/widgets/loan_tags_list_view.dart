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
            FutureBuilder<List<LoanTags>>(
              future: viewModel.getLoanTags(),
              builder: (ctx, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        snapshot.error.toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                    );
                  } else if (snapshot.hasData) {
                    return Expanded(
                      child: SizedBox(
                        height: 30.0,
                        child: ListView.builder(
                            physics: const ClampingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 15,
                            itemBuilder: (BuildContext context, int index) {
                              LoanTags loanTags = snapshot.data![index];
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
                                          borderRadius:
                                              BorderRadius.circular(5),
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
                    );
                  }
                }
                return Container();
              },
            ),
          ],
        ),
        verticalSpaceTiny,
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Align(
            alignment: Alignment.centerRight,
            child: CustomText(
              text: '88results',
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        // verticalSpaceTiny,
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
