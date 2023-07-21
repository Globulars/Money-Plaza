import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/common/background_image.dart';
import 'owner_result_widgets/owner_card_result.dart';
import 'owner_result_widgets/result_top_widget.dart';
import 'ownerloanresult_viewmodel.dart';

class OwnerloanresultView extends StackedView<OwnerloanresultViewModel> {
  const OwnerloanresultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OwnerloanresultViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(),
            body: const Column(
              children: [
                OwnerTopWidget(),
                verticalSpaceSmall,
                Expanded(
                    child: SingleChildScrollView(child: OwnerResultCard())),
              ],
            ),
            // bottomNavigationBar: Container(
            //     height: 60,
            //     width: width * 1,
            //     child: SizedBox(
            //         child: Image.asset(
            //       myIcons.contacts,
            //     ))),
          ),
        ),
      ],
    );
  }

  @override
  OwnerloanresultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OwnerloanresultViewModel();
}
