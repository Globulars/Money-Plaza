// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/app_colors.dart';
import 'icon_box_btn_model.dart';

class ReturnButton extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  // double? imgheight;
  double? imgwidth;
  String? text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  String? imageLeft;
  String? imageRight;
  ReturnButton({
    super.key,
    this.color,
    this.height,
    this.text,
    this.width,
    this.fontSize,
    this.fontWeight,
    this.imageLeft,
    this.imageRight,
    this.imgwidth,
  });

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(
            color: darkGreenLight,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageLeft != null
              ? Row(
                  children: [
                    Image.asset(
                      imageLeft ?? "",
                      width: imgwidth,
                    ),
                    verticalSpaceSmall,
                  ],
                )
              : Container(),
          Text(
            text ?? "",
            style: GoogleFonts.ibmPlexSans(
                decoration: TextDecoration.none,
                color: color ?? darkGreenLight,
                fontSize: fontSize ?? 14,
                fontWeight: fontWeight ?? FontWeight.w400),
          ),
          imageRight != null
              ? Row(
                  children: [
                    verticalSpaceSmall,
                    Image.asset(
                      imageRight ?? "",
                      width: imgwidth,
                    )
                  ],
                )
              : Container(),
        ],
      ),
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
