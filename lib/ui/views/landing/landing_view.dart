import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/views/landing/widgets/landing_body.dart';
import 'package:stacked/stacked.dart';
import '../../common/app_url.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/top_banner.dart';
import 'landing_viewmodel.dart';

class LandingView extends StackedView<LandingViewModel> {
  const LandingView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(LandingViewModel viewModel) {
    viewModel.getAccessToken();
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    LandingViewModel viewModel,
    Widget? child,
  ) {
    final height = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Scaffold(
          appBar: appBar(context),
          body: Container(
            width: MediaQuery.of(context).size.width,
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TopBanner(url: "${ApiUrl().bannersByType}card"),
                  const LandingBody()
                ],
              ),
            ),
          ),
        ),
        bottomBar(Container()),
      ],
    );
  }

  @override
  LandingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingViewModel();
}
