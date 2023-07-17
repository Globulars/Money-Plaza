// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
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
  });

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    final _navigationService = locator<NavigationService>();

    return GestureDetector(
      onTap: () {
        if (onPress != null) {
          onPress!();
        } else {
          _navigationService.back();
        }
      },
      child: Container(
        height: height,
        width: width,
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
            verticalSpaceTiny,
            Text(
              text ?? "",
              style: GoogleFonts.ibmPlexSans(
                  color: color ?? Colors.black,
                  fontSize: fontSize ?? 14,
                  fontWeight: fontWeight ?? FontWeight.w400),
            ),
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
