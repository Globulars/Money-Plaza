import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'blnstransfer_viewmodel.dart';

class BlnstransferView extends StackedView<BlnstransferViewModel> {
  const BlnstransferView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    BlnstransferViewModel viewModel,
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
  BlnstransferViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      BlnstransferViewModel();
}
