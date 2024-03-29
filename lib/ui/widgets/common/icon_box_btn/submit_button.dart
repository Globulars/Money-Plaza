// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../../app/app.locator.dart';
import '../../../common/app_colors.dart';

import 'icon_box_btn_model.dart';

class SubmitButton extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  // double? imgheight;
  double? imgwidth;
  String? text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  String? image;
  Color? boxColor;
  Function? onPress;
  double? scale;

  SubmitButton(
      {super.key,
      this.color,
      this.height,
      this.text,
      this.width,
      this.fontSize,
      this.fontWeight,
      this.image,
      this.imgwidth,
      this.boxColor,
      this.onPress,
      this.scale});

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
      child: Column(
        children: [
          Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: boxColor ?? darkGreenLight,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                image != null
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          verticalSpaceTiny,
                          Image.asset(
                            image ?? "",
                            width: imgwidth,
                            // scale: scale??1,
                          )
                        ],
                      )
                    : Container(),
                horizontalSpaceTiny,
                Text(
                  text ?? "",
                  style: GoogleFonts.ibmPlexSans(
                      decoration: TextDecoration.none,
                      color: color ?? Colors.white,
                      fontSize: fontSize ?? 14,
                      fontWeight: fontWeight ?? FontWeight.w400),
                ).tr(),
              ],
            ),
          ),
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
