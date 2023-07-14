// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../common/app_colors.dart';

import 'icon_box_btn_model.dart';

class SubBar extends StackedView<IconBoxBtnModel> {
  double? height;
  double? width;
  // double? imgheight;
  double? imgwidth;
  String? text;
  Color? color;
  double? fontSize;
  FontWeight? fontWeight;
  String? image;
  bool divider;
  

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
      this.divider=false
      });

  @override
  Widget builder(
    BuildContext context,
    IconBoxBtnModel viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        Container(
          height: height,
          width: width ?? MediaQuery.of(context).size.width - 0,
          decoration:  BoxDecoration(
              color: darkGreenHeigh,
              borderRadius:BorderRadius.circular(8)
             
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
                          width: imgwidth,
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
                    fontWeight: fontWeight ?? FontWeight.w400),
              ),
             
            ],
          ),
        ),
       divider? const Divider(color: darkGreenHeigh, height: 0,thickness: 6,):Container(),
         
      ],
    );
  }

  @override
  IconBoxBtnModel viewModelBuilder(
    BuildContext context,
  ) =>
      IconBoxBtnModel();
}
