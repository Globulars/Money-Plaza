import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/top_banner.dart';
import 'package:money_plaza/ui/widgets/top_bar2/top_bar2_view.dart';
import 'package:stacked/stacked.dart';
import '../../../services/Models/loan_card.dart';
import '../../common/app_icons.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_bar.dart';
import '../../widgets/common/background_image.dart';
import '../../widgets/common/horizental_list_view/horizental_list_view_view.dart';
import '../../widgets/common/icon_box_btn/return_button.dart';
import '../../widgets/common/result_card.dart';
import '../../widgets/loan_containers.dart';
import 'loan_viewmodel.dart';

class LoanView extends StackedView<LoanViewModel> {
  final List<LoanCard>? loanCard;
  const LoanView({Key? key, this.loanCard}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoanViewModel viewModel,
    Widget? child,
  ) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        const BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: appBar(context),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TopBanner(
                    url:
                        "https://admin.moneyplaza.com.hk/banner/getBannersByType?type=loan"),
                verticalSpaceMedium,
                loanCont(context),
                verticalSpaceTiny,
                verticalSpaceSmall,
                Stack(
                  children: [
                    FutureBuilder<List<LoanCard>>(
                      future: viewModel.loanListData(),
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
                            return Column(
                              children: [
                                verticalSpace(70.0),
                                const HorizentalListViewView(),
                                ListView.builder(
                                  itemCount: snapshot.data!.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return resultCard(
                                        context, snapshot.data![index]);
                                  },
                                ),
                              ],
                            );
                          }
                        }
                        return Column(
                          children: [
                            SizedBox(
                              height: height * 0.3,
                              width: width * 1,
                            ),
                            const CircularProgressIndicator(),
                          ],
                        );
                      },
                    ),
                    const TopBar2View(),
                  ],
                ),
                verticalSpaceLarge
              ],
            ),
          ),
        ),
        bottomBar(
          ReturnButton(
            imageLeft: myIcons.returnIcon1,
            imgwidth: 12,
            text: 'return',
            height: 40,
            width: 80,
          ),
        ),
      ],
    );
  }

  @override
  LoanViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoanViewModel();
}
