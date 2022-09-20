import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toast/toast.dart';
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


void launchEmail(BuildContext context) async {
  ToastContext().init(context);
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
    Toast.show("No email app found on device",
        textStyle: const TextStyle(color: Colors.white),
        duration: Toast.lengthShort,
        gravity: Toast.center,
        backgroundColor: Colors.white.withOpacity(0.05));
  }

}