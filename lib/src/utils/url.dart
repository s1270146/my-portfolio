import 'package:url_launcher/url_launcher.dart';

Future<void> jumpToUrl(String urlText) async {
  Uri url = Uri.parse(urlText);
  if (await canLaunchUrl(url)) {
    launchUrl(
      url,
      webOnlyWindowName: '_blank',
    );
  } else {
    print('Cannot launch url: $url');
  }
}
