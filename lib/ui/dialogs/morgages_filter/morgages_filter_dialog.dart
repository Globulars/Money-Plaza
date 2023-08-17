// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names, avoid_types_as_parameter_names
import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_colors.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import '../../../services/Models/list_of_banks.dart';
import '../../views/morgages/morgages_viewmodel.dart';
import '../../widgets/common/custom_text_field/custom_text_field.dart';
import '../../widgets/common/dropdown_textfield/dropdown_textfield.dart';
import '../../widgets/common/dropdown_textfield/model_dropdown.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import '../../widgets/common/icon_box_btn/submit_button.dart';

class MorgagesFilterDialog extends StackedView<MorgagesViewModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const MorgagesFilterDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MorgagesViewModel viewModel,
    Widget? child,
  ) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Dialog(
      insetPadding:
          EdgeInsets.symmetric(vertical: height * 0.13, horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SubBar(
              height: 50,
              color: Colors.white,
              width: width * 1,
              image: myIcons.filter,
              text: 'filter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              btmLeftRadius: 0,
              btmRightRadius: 0,
              topimage: myIcons.cancel,
              close: true,
            ),
            verticalSpaceTiny,
            Form(
              key: viewModel.formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownTextfield(
                      onChanged: viewModel.setMortgages,
                      value: viewModel.mortgages,
                      options: viewModel.mortgagesList,
                      titleText: 'mortgages',
                    ),
                    verticalSpaceSmall,
                    CustomTextField(
                      controller: viewModel.mortgagesPropertyValuationCtrl,
                      titleText: 'mortgageLoadAmount',
                      hintText: 'hk',
                    ),
                    verticalSpaceSmall,
                    CustomTextField(
                      controller: viewModel.mortgagesTenorCtrl,
                      titleText: 'mortgageTenors',
                      hintText: 'year',
                    ),
                    verticalSpaceSmall,
                    FutureBuilder<List<BankList>>(
                      future: viewModel.mortgagesBankListData(),
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
                            return ModelDropdown(
                              titleText: 'bankFinancialInstitutes',
                              value: viewModel.bankList,
                              onChanged: (value) {
                                viewModel.setBankList(value);
                              },
                              options: viewModel.bankDataList,
                            );
                          }
                        }
                        return DropdownTextfield(
                          titleText: 'bankFinancialInstitutes',
                          onChanged: (String) {},
                          options: [],
                        );
                      },
                    ),
                    verticalSpaceSmall,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SubmitButton(
                          height: 40,
                          width: 80,
                          boxColor: Colors.transparent,
                          image: myIcons.iconPowerReset,
                          imgwidth: 15,
                          text: 'resetAll',
                          onPress: viewModel.resetAll,
                          color: darkGreenLight,
                        ),
                        SubmitButton(
                          text: 'matching',
                          onPress: () {
                            viewModel.back();
                            viewModel.back();
                            viewModel.navigateToMorgagesResult([viewModel.bankList?.id]);
                          },
                          height: 40,
                          width: 100,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  MorgagesViewModel viewModelBuilder(BuildContext context) =>
      MorgagesViewModel();
}
