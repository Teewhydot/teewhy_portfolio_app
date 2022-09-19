import 'package:flutter/material.dart';

class SocialMediaContainer extends StatelessWidget {
  const SocialMediaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SmItem(const Icon(Icons.facebook), () {}),
        SmItem(const Icon(Icons.facebook), () {}),
        SmItem(const Icon(Icons.gite_outlined), () {}),
        SmItem(const Icon(Icons.linked_camera), () {}),
      ],
    );
  }
}

class SmItem extends StatelessWidget {
  final Icon icon;
  final onTap;
  const SmItem(this.icon, this.onTap, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.white,
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
          child: icon,
        ),
      ),
    );
  }
}
