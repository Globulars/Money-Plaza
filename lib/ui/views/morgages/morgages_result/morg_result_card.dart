import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'morgages_result_viewmodel.dart';

class MorgagesResultCard extends StackedView<MorgagesResultViewModel> {
  const MorgagesResultCard({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesResultViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Expanded(
        child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Card(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(myIcons.hSBC)
                        ],
                      )
                    ],
                  ),
                ),
                )));
  }

  @override
  MorgagesResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MorgagesResultViewModel();
}
