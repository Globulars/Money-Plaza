import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/app_bar.dart';
import 'landing_viewmodel.dart';

class LandingView extends StackedView<LandingViewModel> {
  const LandingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LandingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: appBar(() {}, () {}),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/screens/mainbg.png"),
            fit: BoxFit.fill
          ),
        ),
        child: Column(children: [
          Image.asset(
            "assets/screens/landing/cover_image.png",
            fit: BoxFit.fill,
            height: 150,
          ),
        ]),
      ),
    );
  }

  @override
  LandingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LandingViewModel();
}
