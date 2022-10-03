import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/generated/assets.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

final scaffoldSpacing = addVerticalSpacing(40);
final kScaffoldColor = Colors.grey[300];
final kScaffoldColorDarkMode = Colors.grey[900];
final kBoxDecorationColor = Colors.grey[300];
final kBoxDecorationColorDarkMode = Colors.grey[900];
final kBoxShadow1 = Colors.white;
final kBoxShadow2 = Colors.grey.shade400;
final kBoxShadow1DarkMode = Colors.black;
final kBoxShadow2darkMode = Colors.grey.shade800;

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

void launchURL(String url, BuildContext context) async {
  ToastContext().init(context);
  if (await canLaunchUrlString(
    url,
  )) {
    await launchUrlString(url,
        mode: LaunchMode.inAppWebView,
        webViewConfiguration: const WebViewConfiguration(
          enableJavaScript: true,
          enableDomStorage: true,
        ));
  } else {
    Toast.show("Could not launch website.",
        textStyle: const TextStyle(color: Colors.white),
        duration: Toast.lengthShort,
        gravity: Toast.center,
        backgroundColor: Colors.white.withOpacity(0.05));
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
  final providerListen =
      Provider.of<DesignModeProvider>(context, listen: false);
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'administrator@teeofgui.tech',
    query: encodeQueryParameters(<String, String>{
      'subject': 'I have a Job for you',
    }),
  );

  if (await canLaunchUrl(emailLaunchUri)) {
    await launchUrl(emailLaunchUri);
  } else {
    Toast.show("No email app found on device",
        textStyle: TextStyle(
            color: providerListen.isDarkMode ? Colors.white : Colors.black),
        duration: Toast.lengthShort,
        gravity: Toast.center,
        backgroundColor: Colors.white.withOpacity(0.05));
  }
}

final Widget flutter = SvgPicture.asset(Assets.imagesFlutter);

final Widget api = SvgPicture.asset(Assets.assetsCloudapi);

final Widget dart = SvgPicture.asset(Assets.imagesDartc);

final Widget firebase = SvgPicture.asset(
  Assets.assetsFirebase,
  height: 50,
  width: 30,
);
