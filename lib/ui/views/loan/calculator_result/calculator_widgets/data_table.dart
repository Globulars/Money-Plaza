import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../calculator_result_viewmodel.dart';

class CalDataTable extends ViewModelWidget<CalculatorResultViewModel> {
  const CalDataTable({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
    CalculatorResultViewModel viewModel,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Container();
  }
}
