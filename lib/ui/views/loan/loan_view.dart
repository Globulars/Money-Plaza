import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/top_bar2/top_bar2_view.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_icons.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/background_image.dart';
import '../../widgets/common/horizental_list_view/horizental_list_view_view.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/icon_box_btn/text.dart';
import '../../widgets/common/result_card.dart';
import '../../widgets/loan_containers.dart';
import 'loan_viewmodel.dart';

class LoanView extends StackedView<LoanViewModel> {
  const LoanView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: SingleChildScrollView(
            child: Column(
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
                  child:Center(child: CustomText(text: 'compareAndApply',fontSize: 16,color: Colors.white,textAlign: TextAlign.center,fontWeight: FontWeight.bold,)) ,
                ),
                verticalSpaceMedium,
                loanCont(context),
                verticalSpaceTiny,
                verticalSpaceSmall,
                Stack(
                  children: [
                    Column(
                      children: [
                        verticalSpace(70.0),
                        const HorizentalListViewView(),
                        ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return resultCard(context);
                          },
                        ),
                      ],
                    ),
                    const TopBar2View(),
                  ],
                ),
                verticalSpaceLarge
              ],
            ),
          ),
        ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 12,
            text: 'return',
            height: 40,
            width: 80,
          ),
        ),
      ],
    );
  }

  @override
  LoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoanViewModel();
}
