import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/bottom_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/horizental_list_view/horizental_list_view_view.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/result_card.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../widgets/top_bar2/top_bar2_view.dart';
import 'commerical_result_viewmodel.dart';

class CommericalResultView extends StackedView<CommericalResultViewModel> {
  const CommericalResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CommericalResultViewModel viewModel,
    Widget? child,
  ) {
   return Stack(
      children: [
        const BackgroundImage(),
         Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(),
            body: Stack(
              children: [
                Column(
                  children: [
                    verticalSpace(70),
                    const HorizentalListViewView(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return resultCard(context);
                        },
                      ),
                    ),
                    verticalSpaceLarge,
                  ],
                ),
                const TopBar2View(),
              ],
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
  CommericalResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CommericalResultViewModel();
}
