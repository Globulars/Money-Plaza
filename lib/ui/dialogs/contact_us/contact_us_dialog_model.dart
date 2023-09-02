import 'package:stacked/stacked.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsDialogModel extends BaseViewModel {
  Future<void> urlLaunch(_url) async {
    if (!await launchUrl(Uri.parse(_url))) {
      throw Exception('Could not launch $_url');
    }
  }

  Future<void> whatsappsms() async {
    final Uri _url = Uri.parse("https://wa.me/+85261820861");
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }

  Future<void> mailto() async {
    final Uri _url = Uri.parse("mailto:info@moneyplaza.com.hk");
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }

  Future<void> call() async {
    final Uri _url = Uri.parse("tel:+85261820861");
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }

  Future<void> telegram() async {
    final Uri _url = Uri.parse("https://t.me/dropletsofdew");
    if (await canLaunchUrl(_url)) {
      await launchUrl(_url);
    }
  }
}
