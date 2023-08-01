import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/widgets_Model.dart';
import 'package:stacked/stacked.dart';

import 'common/icon_box_btn/text.dart';

class TopBanner extends StackedView<WidgetViewModel> {
  final String text;
  final String image;
  const TopBanner(this.text, this.image, {Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WidgetViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      height: width * 0.4,
      width: width * 1,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fitWidth),
      ),
      child: Center(
          child: CustomText(
        text: text,
        fontSize: 24,
        color: Colors.white,
        textAlign: TextAlign.center,
        fontWeight: FontWeight.bold,
      )),
    );
  }

  @override
  WidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WidgetViewModel();
}
