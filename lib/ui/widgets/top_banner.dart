import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/widgets_Model.dart';
import 'package:stacked/stacked.dart';

class TopBanner extends StackedView<WidgetViewModel> {
  final String url;
  const TopBanner({Key? key, required this.url}) : super(key: key);
  @override
  void onViewModelReady(WidgetViewModel viewModel) {
    viewModel.getBannerImages(url);
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    WidgetViewModel viewModel,
    Widget? child,
  ) {
    return viewModel.bannerImages.signMobileImageUrl != null
        ? Image.network(
            "${viewModel.bannerImages.signMobileImageUrl}",
          )
        : Container();
  }

  @override
  WidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WidgetViewModel();
}
