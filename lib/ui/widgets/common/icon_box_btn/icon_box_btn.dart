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
  String? image;

  IconBoxBtn({super.key, this.color, this.height, this.text, this.width,this.fontSize,this.fontWeight,this.image,this.imgwidth});

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
          color: lightGreenHeigh, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(text ?? "",
              style: GoogleFonts.ibmPlexSans(
                  color: color ?? Colors.black,
                  fontSize: fontSize ?? 12,
                  fontWeight: fontWeight ?? FontWeight.w400
                  
                  ),),
                 image != null? Column(
                    children: [
                      verticalSpaceTiny,
                  Image.asset(image??"",width: imgwidth,)
                    ],
                  ):Container(),
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
