import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../../widgets/app_bar.dart';
import '../../../../widgets/common/result_card.dart';
import 'ploan_widgets/top_widget.dart';
import 'ploanreslut_viewmodel.dart';

class PloanreslutView extends StackedView<PloanreslutViewModel> {
  const PloanreslutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    PloanreslutViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          width: width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(myIcons.backgroundimage), fit: BoxFit.fill),
          ),
        ),
        DefaultTabController(
          length: 3,
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: appBar(),
            body:  Column(
              children: [
                const TopWidget(),
                verticalSpaceSmall,
                Expanded(
                    child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return resultCard(context);
                  },
                ),),
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
  PloanreslutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      PloanreslutViewModel();
}
