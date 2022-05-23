import 'package:url_launcher/url_launcher.dart';

Future<bool> openUrl(String url) => launch(url, forceSafariVC: false);
