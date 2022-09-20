import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Widget addVerticalSpacing(double height) {
  return SizedBox(
    height: height.h,
  );
}

Widget addHorizontalSpacing(double width) {
  return SizedBox(
    width: width.w,
  );
}

void launchURL(String url) async {
  if (await canLaunchUrlString(
      url,)) {
    await launchUrlString(url,mode: LaunchMode.inAppWebView, webViewConfiguration: const WebViewConfiguration(
      enableJavaScript: true,
      enableDomStorage: true,
    ));
  } else {
    throw 'Could not launch $url';
  }
}


String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map((MapEntry<String, String> e) =>
  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
      .join('&');
}


void launchEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'administrator@gmail.com',
    query: encodeQueryParameters(<String, String>{
      'subject':'I have a Job for you',
    }),
  );

  if (await canLaunchUrl(emailLaunchUri)) {
    await launchUrl(emailLaunchUri);
  } else {
    throw "Error occurred sending an email";
  }

}