import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchUrl(String? url) async {
  if (url == null) return;
  if (await canLaunchUrl(Uri.parse(url))) return launchUrl(url);
  Get.snackbar('Sorry', 'This repo is not avaible now to show',
      snackPosition: SnackPosition.BOTTOM);
}
