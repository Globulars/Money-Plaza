import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../../common/app_colors.dart';
import '../../../../../common/ui_helpers.dart';
import '../../../../../widgets/common/horizental_list_view/horizental_list_view_view.dart';
import '../../../../../widgets/common/icon_box_btn/text.dart';
import '../../../../../widgets/top_bar2/top_bar2_view.dart';
import '../ploanreslut_viewmodel.dart';

class TopWidget extends ViewModelWidget<PloanreslutViewModel> {
  const TopWidget({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    PloanreslutViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [],
        )
      ],
    );
  }
}
