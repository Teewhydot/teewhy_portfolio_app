// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';

import '../provider/design_mode_provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    final provider = Provider.of<DesignModeProvider>(context, listen: false);
    final text = providerListen.isDarkMode ? 'Dark Mode' : 'Bright Mode';
    final textColor = providerListen.isDarkMode ? Colors.white : Colors.black;
    return Consumer<DesignModeProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addVerticalSpacing(30),
                Text('Settings',
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: textColor)),
                ListTile(
                  textColor: textColor,
                  style: ListTileStyle.list,
                  leading: Text(text),
                  trailing: Switch.adaptive(
                      value: value.isDarkMode,
                      onChanged: (value) {
                        provider.toggleDesignMode(value);
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width,
          height: 500.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: providerListen.isDarkMode
                    ? kBoxShadow1DarkMode
                    : kBoxShadow1,
              ),
              BoxShadow(
                color: providerListen.isDarkMode
                    ? kBoxShadow2darkMode
                    : kBoxShadow2,
              ),
            ],
          ),
        );
      },
    );
  }
}
