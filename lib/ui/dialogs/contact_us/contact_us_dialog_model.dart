import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsDialogModel extends BaseViewModel {
  Future<void> urlLaunch(_url) async {
  if (!await launchUrl(Uri.parse(_url))) {
    throw Exception('Could not launch $_url');
  }
}
}
