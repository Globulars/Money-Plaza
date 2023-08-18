import 'package:flutter/material.dart';
import 'package:money_plaza/ui/widgets/widgets_Model.dart';
import 'package:stacked/stacked.dart';
import '../../services/Models/card_banners.dart';

class TopBanner extends StackedView<WidgetViewModel> {
  final String url;
  const TopBanner({Key? key, required this.url}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    WidgetViewModel viewModel,
    Widget? child,
  ) {
    return FutureBuilder<BannerImages>(
      future: viewModel.bannerImages(url),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(
              child: Text(
                snapshot.error.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            );
          } else if (snapshot.hasData) {
            return Image.network(
              "${snapshot.data?.signMobileImageUrl}",
            );
          }
        }
        return const SizedBox();
      },
    );
  }

  @override
  WidgetViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      WidgetViewModel();
}
