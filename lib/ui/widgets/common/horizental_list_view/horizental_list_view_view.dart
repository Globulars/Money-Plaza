import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../common/app_colors.dart';
import '../../../common/ui_helpers.dart';
import '../icon_box_btn/text.dart';
import 'horizental_list_view_viewmodel.dart';
import 'package:money_plaza/ui/common/app_icons.dart';

class HorizentalListViewView extends StackedView<HorizentalListViewViewModel> {
  const HorizentalListViewView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HorizentalListViewViewModel viewModel,
    Widget? child,
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
            Expanded(
              child: SizedBox(
                height: 30.0,
                child: ListView.builder(
                  physics: const ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 15,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border:
                                Border.all(color: darkGreenHeigh, width: 1)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Center(
                              child: CustomText(
                            text: 'loanAmount',
                            color: darkGreenHeigh,
                            fontSize: 12,
                          )),
                        )),
                  ),
                ),
              ),
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

  @override
  HorizentalListViewViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HorizentalListViewViewModel();
}
