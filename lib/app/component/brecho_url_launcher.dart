import 'package:brecho_utilities/brecho_utilities.dart';



import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;enum BrechoUrlLauncherMode {
  platformDefault(launcher.LaunchMode.platformDefault),
  inAppWebView(launcher.LaunchMode.inAppWebView),
  externalNonBrowserApplication(
      launcher.LaunchMode.externalNonBrowserApplication),
  externalApplication(launcher.LaunchMode.externalApplication);

  const BrechoUrlLauncherMode(this.mode);
  final launcher.LaunchMode mode;
}

class DryveUrlLauncher {

DryveUrlLauncher._();

  static Future<void> launchURL(
    String uri, {
    BrechoUrlLauncherMode launchMode = BrechoUrlLauncherMode.platformDefault,
  }) async {
    if (!await launcher.launchUrl(
      Uri.parse(uri),
      mode: launchMode.mode,
    )) throw 'Could not launch $uri';
  }

  static Future<bool> phone(String phoneNumber) async {
    final phone = phoneNumber.removeTelephoneUnnecessaryParts;
    final url = Uri.parse('tel:$phone');

    if (!await launcher.launchUrl(url)) {
      return false;
    }

    return true;
  }

  static Future<bool> whatsapp(String phoneNumber, {String? text}) async {
    String uri;
    var phone = phoneNumber.removeTelephoneUnnecessaryParts;

    if (!phone.startsWith("55") && phone.length < 12) {
      phone = "55$phone";
    }

    if (defaultTargetPlatform == TargetPlatform.iOS) {
      uri = "whatsapp://wa.me/$phone";

      if (text != null) {
        uri = '$uri?text=${Uri.encodeFull(text)}';
      }
    } else {
      uri = "whatsapp://send?phone=$phone";

      if (text != null) {
        uri = '$uri&text=${Uri.encodeFull(text)}';
      }
    }

    final url = Uri.parse(uri.replaceAll('%250A', '%0A'));

    try {
      return await launcher.launchUrl(url);
    } catch (e) {
      return false;
    }
  }

  static Future<bool> email(String email) async {
    final url = Uri.parse('mailto:$email');

    if (!await launcher.launchUrl(url)) {
      return false;
    }

    return true;
  }
}
