// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';

import '../../provider/design_mode_provider.dart';

class SocialMediaContainer extends StatelessWidget {
  const SocialMediaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SmItem(
          FontAwesomeIcons.facebook,
          () {
            launchURL(
                'https://web.facebook.com/heesah?sk=wall&notif_id=1664494916583737&notif_t=wall&ref=notif',
                context);
          },
        ),
        SmItem(FontAwesomeIcons.twitter, () {
          launchURL('https://twitter.com/tee_of_gui', context);
        }),
        SmItem(
          FontAwesomeIcons.linkedin,
          () {
            launchURL('https://www.linkedin.com/in/abubakar-issa-a0a200189/',
                context);
          },
        ),
        SmItem(
          FontAwesomeIcons.github,
          () {
            launchURL('https://github.com/Teewhydot', context);
          },
        ),
      ],
    );
  }
}

class SmItem extends StatelessWidget {
  final icon;
  final onTap;

  const SmItem(this.icon, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    Color getIconColor() {
      return providerListen.isDarkMode ? Colors.white : Colors.black;
    }

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(5.0.r),
        child: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: providerListen.isDarkMode ? Colors.black : Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Icon(
            icon,
            color: getIconColor(),
          ),
        ),
      ),
    );
  }
}