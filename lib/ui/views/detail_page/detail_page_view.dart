import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'detail_page_viewmodel.dart';

class DetailPageView extends StackedView<DetailPageViewModel> {
  const DetailPageView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    DetailPageViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  DetailPageViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DetailPageViewModel();
}
