import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/submit_button.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/background_image.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/top_banner.dart';
import 'morgages_viewmodel.dart';
import 'morgages_widgets/text_fields.dart';

class MorgagesView extends StackedView<MorgagesViewModel> {
  const MorgagesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesViewModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TopBanner(
                  url:
                      "https://admin.moneyplaza.com.hk/banner/getBannersByType?type=mortgage"),
              MorgTextFields(),
            ],
          ),
        ),
        bottomBar(
          Row(
            children: [
              ReturnButton(
                imageLeft: myIcons.returnIcon1,
                imgwidth: 12,
                text: 'return',
                height: 40,
                width: 80,
              ),
              horizontalSpaceTiny,
              SubmitButton(
                image: myIcons.search,
                imgwidth: 12,
                onPress: viewModel.navigateToMorgagesResult,
                text: 'search',
                height: 40,
                width: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  MorgagesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesViewModel();
}
