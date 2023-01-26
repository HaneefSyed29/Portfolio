import 'package:url_launcher/url_launcher.dart';

class Method {
  openURL(String url) async {
    await canLaunch(url) ? await launch(url) : throw "Could not Launch $url";
  }

  launchEmail() async {
    if (await canLaunch("mailto:shaneef2905@gmail.com")) {
      await launch("mailto:shaneef2905@gmail.com");
    } else {
      throw 'Could not launch';
    }
  }
}
