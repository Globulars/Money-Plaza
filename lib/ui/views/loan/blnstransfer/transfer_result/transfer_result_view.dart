import 'package:flutter/material.dart';
import 'package:money_plaza/ui/views/loan/blnstransfer/transfer_result/top_widget.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../common/ui_helpers.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/common/background_image.dart';
import '../../../../widgets/common/result_card.dart';
import 'transfer_result_viewmodel.dart';

class TransferResultView extends StackedView<TransferResultViewModel> {
  const TransferResultView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    TransferResultViewModel viewModel,
    Widget? child,
  ) {
    // final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(),
            body: Column(
              children: [
                const TranTopWidget(),
                verticalSpaceSmall,
                Expanded(
                    child: SingleChildScrollView(
                        child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return resultCard(context);
                  },
                ))),
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
  TransferResultViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TransferResultViewModel();
}
