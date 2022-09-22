// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';

import '../provider/design_mode_provider.dart';

class SettingsGlass extends StatefulWidget {
  const SettingsGlass({super.key});

  @override
  State<SettingsGlass> createState() => _SettingsGlassState();
}

class _SettingsGlassState extends State<SettingsGlass> {
  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    final provider = Provider.of<DesignModeProvider>(context, listen: false);
    final text = providerListen.isGlassMode ? 'Glass Mode' : 'Neumorphic Mode';
    return Container(
        decoration: const BoxDecoration(),
        child: GlassmorphicContainer(
          width: MediaQuery.of(context).size.width,
          height: 500.h,
          borderRadius: 20.r,
          blur: 30.r,
          padding:  EdgeInsets.all(20.r),
          alignment: Alignment.bottomCenter,
          border: 2,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                const Color(0xFFffffff).withOpacity(0.1),
                const Color(0xFFFFFFFF).withOpacity(0.05),
              ],
              stops: const [
                0.1,
                1,
              ]),
          borderGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color(0xFFffffff).withOpacity(0.5),
              const Color((0xFFFFFFFF)).withOpacity(0.5),
            ],
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addVerticalSpacing(30),
                Text('Settings',
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                ListTile(
                  textColor: Colors.white,
                  style: ListTileStyle.list,
                  leading: Text(text),
                  enabled: true,

                  trailing: Switch.adaptive(
                      value: providerListen.isGlassMode,
                      onChanged: (value) {
                        provider.toggleDesignMode(value);
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),
          ),
        ));
  }
}

class SettingsNeumorphic extends StatefulWidget {
  final color;

  const SettingsNeumorphic({super.key, this.color});

  @override
  State<SettingsNeumorphic> createState() => _SettingsNeumorphicState();
}

class _SettingsNeumorphicState extends State<SettingsNeumorphic> {
  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    final provider = Provider.of<DesignModeProvider>(context, listen: false);
    final text = providerListen.isGlassMode ? 'Glass Mode' : 'Neumorphic Mode';
    return Consumer<DesignModeProvider>(
      builder: (BuildContext context, value, Widget? child) {
        return  Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                addVerticalSpacing(30),
                Text('Settings',
                    style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                ListTile(
                  textColor: Colors.white,
                  style: ListTileStyle.list,

                  leading: Text(text),
                  trailing: Switch.adaptive(
                      value: value.isGlassMode,
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
            color: widget.color,
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                blurRadius: 10.r,
                spreadRadius: 1,
                offset: const Offset(-5, -5), // changes position of shadow
              ),
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 18,
                spreadRadius: 1,
                offset: const Offset(5, 5), // changes position of shadow
              ),
            ],
          ),
        );
      },
    );
  }
}
