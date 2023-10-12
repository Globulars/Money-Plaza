// ignore_for_file: must_be_immutable

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/widgets_Model.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_html/flutter_html.dart';

class CustomText extends StackedView<WidgetViewModel> {
  String text;
  double? fontSize;
  Color? color;
  bool localization;
  FontWeight? fontWeight;
  double? letterSpacing;
  double? wordspacing;
  TextAlign? textAlign;
  TextDirection? textDirection;
  TextOverflow? textOverflow;
  int? maxLines;
  CustomText(
      {super.key,
      this.text = "",
      this.color,
      this.localization = true,
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
    WidgetViewModel viewModel,
    Widget? child,
  ) {
    return text != "" && text[0] == "<"
        ? Html(data: text)
        : !localization
            ? Text(
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
              )
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
              ).tr();
  }

  @override
  WidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WidgetViewModel();
}
