import 'package:flutter/material.dart';
import 'package:money_plaza/ui/common/app_icons.dart';
import 'package:money_plaza/ui/common/ui_helpers.dart';
import 'package:money_plaza/ui/widgets/common/icon_box_btn/icon_box_btn.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../widgets/common/icon_box_btn/sub_bar.dart';
import 'contact_us_dialog_model.dart';

class ContactUsDialog extends StackedView<ContactUsDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const ContactUsDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ContactUsDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.white,
      child: SizedBox(
        height: 200,
        width: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SubBar(
              height: 40,
              color: Colors.white,
              text: 'Contact Us',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              btmLeftRadius: 0,
              btmRightRadius: 0,
              topimage: myIcons.cancel,
              close: true,
            ),
            verticalSpaceTiny,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBoxBtn(
                      topimage: myIcons.wts,
                      imgwidth: 60,
                      boxcolor: Colors.transparent,
                      margin: 5,
                    ),
                    IconBoxBtn(
                      topimage: myIcons.tele,
                      imgwidth: 60,
                      boxcolor: Colors.transparent,
                      margin: 5,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconBoxBtn(
                      topimage: myIcons.mail,
                      imgwidth: 60,
                      boxcolor: Colors.transparent,
                      margin: 5,
                    ),
                    IconBoxBtn(
                      topimage: myIcons.callLog,
                      imgwidth: 60,
                      boxcolor: Colors.transparent,
                      margin: 5,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  ContactUsDialogModel viewModelBuilder(BuildContext context) =>
      ContactUsDialogModel();
}
