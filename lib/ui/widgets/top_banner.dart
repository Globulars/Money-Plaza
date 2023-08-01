import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/widgets_Model.dart';
import 'package:stacked/stacked.dart';
import 'common/icon_box_btn/text.dart';

class TopBanner extends ViewModelWidget<WidgetViewModel> {
  final String text;
  final String image;
  const TopBanner({Key? key, required this.text, required this.image})
      : super(key: key);
  @override
  Widget build(
    BuildContext context,
    WidgetViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: width * 0.37,
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
}
