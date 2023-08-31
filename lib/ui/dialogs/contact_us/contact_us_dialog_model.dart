import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsDialogModel extends BaseViewModel {
  Future<void> urlLaunch(_url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> whatsappsms() async {
    final Uri _url = Uri.parse("whatsapp://send?phone=+93454335400");
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }

  Future<void> simsms() async {
    final Uri _url = Uri.parse("sms:03454335400");
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }

  Future<void> call() async {
    final Uri _url = Uri.parse("tel:+1-555-010-999");
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }
}
