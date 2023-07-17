import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../widgets/app_bar.dart';
import 'member_login_viewmodel.dart';

class MemberLoginView extends StackedView<MemberLoginViewModel> {
  const MemberLoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MemberLoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: appBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/screens/mainbg.png"), fit: BoxFit.fill),
        ),
        child: Column(children: []),
      ),
    );
  }

  @override
  MemberLoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MemberLoginViewModel();
}
