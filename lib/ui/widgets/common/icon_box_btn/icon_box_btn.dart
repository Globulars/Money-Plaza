// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/app_colors.dart';
import 'icon_box_btn_model.dart';

class IconBoxBtn extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  // double? imgheight;
  double? imgwidth;
  String? text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  String? topimage;
  String? btmimage;
  Color? boxcolor;
  Function? onPress;
  double margin;

  IconBoxBtn({
    super.key,
    this.color,
    this.height,
    this.text,
    this.width,
    this.fontSize,
    this.fontWeight,
    this.topimage,
    this.imgwidth,
    this.btmimage,
    this.boxcolor,
    this.onPress,
    this.margin = 0.0,
  });

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        }
      },
      child: Container(
        height: height,
        width: width,
        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
            color: boxcolor ?? lightGreenHeigh,
            borderRadius: BorderRadius.circular(8)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            topimage != null
                ? Column(
                    children: [
                      verticalSpaceTiny,
                      Image.asset(
                        topimage ?? "",
                        width: imgwidth,
                      )
                    ],
                  )
                : Container(),
            text != null
                ? Column(
                    children: [
                      verticalSpaceTiny,
                      Text(
                        text ?? "",
                        style: GoogleFonts.ibmPlexSans(
                            color: color ?? Colors.black,
                            fontSize: fontSize ?? 14,
                            fontWeight: fontWeight ?? FontWeight.w400),
                      ),
                    ],
                  )
                : Container(),
            btmimage != null
                ? Column(
                    children: [
                      verticalSpaceTiny,
                      Image.asset(
                        btmimage ?? "",
                        width: imgwidth,
                      )
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
