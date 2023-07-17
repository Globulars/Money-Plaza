import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import 'morgages_viewmodel.dart';
import 'morgages_widgets/pic_text.dart';
import 'morgages_widgets/text_fields.dart';

class MorgagesView extends StackedView<MorgagesViewModel> {
  const MorgagesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(),
          body: const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Picture(),
              MorgTextFields(),
            ],
          ),
        ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 18,
            fontSize: 18,
            text: 'Retrue',
            height: 40,
            width: 80,
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
