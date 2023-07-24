import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:stacked/stacked.dart';
import '../../../widgets/common/icon_box_btn/text.dart';
import '../detail_filte_dialog_model.dart';
import 'card_3_table.dart';

class DetailCard3 extends ViewModelWidget<DetailFilteDialogModel> {
  const DetailCard3({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    DetailFilteDialogModel viewModel,
  ) {
    return Card(
      margin: const EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: lightGreenHeigh,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4), topRight: Radius.circular(4))),
            child: Row(
              children: [
                Image.asset(
                  myIcons.weLend,
                ),
              ],
            ),
          ),
          CustomText(text: 'thePromotionValid'),
          const Card3Table(),
          CustomText(text: 'termsConditionsApply'),
        ],
      ),
    );
  }
}
