import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';

class SettingsGlass extends StatelessWidget {
  const SettingsGlass({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(),
        child: GlassmorphicContainer(
          width: MediaQuery.of(context).size.width,
          height: 500,
          borderRadius: 20,
          blur: 30,
          padding: const EdgeInsets.all(20),
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
                const Text('Settings',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                ListTile(
                  textColor: Colors.white,
                  style: ListTileStyle.list,
                  title: const Text('Change design mode'),
                  trailing:
                      Switch.adaptive(value: false, onChanged: (value) {}),
                ),
              ],
            ),
          ),
        ));
  }
}

class SettingsNeumorphic extends StatelessWidget {
  final color;
  const SettingsNeumorphic({super.key, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            addVerticalSpacing(30),
            const Text('Settings',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
            ListTile(
              textColor: Colors.white,
              style: ListTileStyle.list,
              title: const Text('Change design mode'),
              trailing: Switch.adaptive(value: false, onChanged: (value) {}),
            ),
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
        boxShadow: [
          const BoxShadow(
            color: Colors.white,
            blurRadius: 10,
            spreadRadius: 1,
            offset: Offset(-5, -5), // changes position of shadow
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
  }
}
