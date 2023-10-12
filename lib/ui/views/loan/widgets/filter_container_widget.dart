// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/app_colors.dart';
import '../loan_viewmodel.dart';

class FilterContainerBtn extends StackedView<LoanViewModel> {
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
  double? padding;
  double? horizental;
  double? vertical = 0.0;
  double? topLeftRadius;
  double? topRightRadius;
  double? btmLeftRadius;
  double? btmRightRadius;
  double? btmWidth;

  FilterContainerBtn(
      {super.key,
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
      this.padding,
      this.horizental,
      this.topLeftRadius,
      this.topRightRadius,
      this.btmLeftRadius,
      this.btmRightRadius,
      this.vertical,
      this.btmWidth});

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
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
        padding: EdgeInsets.symmetric(
            horizontal: horizental ?? 00, vertical: vertical ?? 00),
        decoration: BoxDecoration(
          color: boxcolor ?? lightGreenHeigh,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(topLeftRadius ?? 10),
              topRight: Radius.circular(topRightRadius ?? 10),
              bottomLeft: Radius.circular(btmLeftRadius ?? 10),
              bottomRight: Radius.circular(btmRightRadius ?? 10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // topimage != null
            //     ? Column(
            //         children: [
            //           verticalSpaceTiny,
            //           Image.asset(
            //             topimage ?? "",
            //             width: imgwidth ?? 30,
            //           )
            //         ],
            //       )
            //     : Container(),
            text != null
                ? Column(
                    children: [
                      verticalSpaceTiny,
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          text ?? "",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.ibmPlexSans(
                              color: color ?? Colors.black,
                              fontSize: fontSize ?? 10,
                              fontWeight: fontWeight ?? FontWeight.w400),
                        ).tr(),
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
                        width: btmWidth ?? 20,
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
  LoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoanViewModel();
}
