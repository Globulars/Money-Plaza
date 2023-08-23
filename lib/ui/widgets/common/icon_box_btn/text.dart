// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import 'icon_box_btn_model.dart';
import 'package:flutter_html/flutter_html.dart';

class CustomText extends StackedView<IconBoxBtnModel> {
 String text;
  double? fontSize;
  Color? color;
  FontWeight? fontWeight;
  double? letterSpacing;
  double? wordspacing;
  TextAlign? textAlign;
  TextDirection? textDirection;
  TextOverflow? textOverflow;
  int? maxLines;
  CustomText(
      {super.key,
       this.text="",
      this.color,
      this.fontSize,
      this.fontWeight,
      this.letterSpacing,
      this.wordspacing,
      this.textAlign,
      this.textDirection,
      this.textOverflow,
      this.maxLines});

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return text[0] == "<"
        ? Html(data: text)
        : Text(
            text,
            style: GoogleFonts.ibmPlexSans(
              color: color ?? Colors.black,
              fontSize: fontSize ?? 14,
              fontWeight: fontWeight ?? FontWeight.w400,
              letterSpacing: letterSpacing ?? 0,
              wordSpacing: wordspacing ?? 0,
            ),
            textAlign: textAlign,
            overflow: textOverflow,
            maxLines: maxLines,
          );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
