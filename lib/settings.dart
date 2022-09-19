import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(),
        child: GlassmorphicFlexContainer(
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
                  trailing: Switch.adaptive(value: false, onChanged: (value) {}),
                ),
              ],
            ),
          ),
          )
        );
  }
}
