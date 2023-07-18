// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/app_colors.dart';

import 'icon_box_btn_model.dart';

class SubBar extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  double? topimgwidth;
  double? imgwidth;
  String? text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  String? image;
  String? topimage;
  bool divider;
  double? topLeftRadius;
  double? topRightRadius;
  double? btmLeftRadius;
  double? btmRightRadius;
  double? scale;
  Function? onPress;
  bool close;

  SubBar(
      {super.key,
      this.color,
      this.height,
      this.text,
      this.width,
      this.fontSize,
      this.fontWeight,
      this.image,
      this.imgwidth,
      this.topLeftRadius,
      this.topRightRadius,
      this.btmLeftRadius,
      this.btmRightRadius,
      this.topimage,
      this.topimgwidth,
      this.divider = false,
      this.scale,
      this.onPress,
      this.close = false});

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return Stack(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                if (onPress != null) {
                  onPress!();
                } else {
                  // _navigationService.back();
                }
              },
              child: Container(
                height: height ?? 50,
                width: width ?? MediaQuery.of(context).size.width * 1 - 10,
                decoration: BoxDecoration(
                  color: darkGreenHeigh,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(topLeftRadius ?? 10),
                      topRight: Radius.circular(topRightRadius ?? 10),
                      bottomLeft: Radius.circular(btmLeftRadius ?? 10),
                      bottomRight: Radius.circular(btmRightRadius ?? 10)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    image != null
                        ? Row(
                            children: [
                              verticalSpaceSmall,
                              Image.asset(
                                image ?? "",
                                width: imgwidth ?? 25,
                                scale: scale,
                              )
                            ],
                          )
                        : Container(),
                    horizontalSpaceTiny,
                    Text(
                      text ?? "",
                      style: GoogleFonts.ibmPlexSans(
                          color: color ?? Colors.white,
                          fontSize: fontSize ?? 15,
                          fontWeight: fontWeight ?? FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            divider
                ? const Divider(
                    color: darkGreenHeigh,
                    height: 0,
                    thickness: 6,
                  )
                : Container(),
          ],
        ),
        close
            ? Positioned(
                top: 5,
                right: 5,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    myIcons.cancel,
                    width: 17,
                  ),
                ),
              )
            : Container()
      ],
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
