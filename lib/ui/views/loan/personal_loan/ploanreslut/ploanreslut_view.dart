import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/bottom_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/icon_box_btn/return_button.dart';
import '../../../../widgets/common/result_card.dart';
import 'ploan_widgets/top_widget.dart';
import 'ploanreslut_viewmodel.dart';

class PloanreslutView extends StackedView<PloanreslutViewModel> {
  const PloanreslutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PloanreslutViewModel viewModel,
    Widget? child,
  ) {
    // final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: Column(
            children: [
              const TopWidget(),
              verticalSpaceSmall,
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return resultCard(context);
                  },
                ),
              ),
              verticalSpaceLarge,
            ],
          ),
        ),
        // ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 12,
            text: 'retrue',
            height: 40,
            width: 80,
          ),
        ),
      ],
    );
  }

  @override
  PloanreslutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PloanreslutViewModel();
}
