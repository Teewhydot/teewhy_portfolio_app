import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class SkillCard extends StatelessWidget {
  final String skillName;
  final Icon skillIcon;
  final Color skillColor;

  const SkillCard(
      {super.key,
      required this.skillName,
      required this.skillIcon,
      required this.skillColor});

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      borderRadius: 20,
      blur: 20,
      padding: const EdgeInsets.all(5),
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            skillColor.withOpacity(0.3),
            skillColor.withOpacity(0.05),
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
      width: 150,
      height: 150,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            skillIcon,
            Text(
              skillName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
