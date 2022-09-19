import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';

class PortfolioCard extends StatelessWidget {
  final String projectName;
  final String projectDescription;
  final String projectImage;
  final String githubRepositoryLink;
  final String netlifySiteLink;

  const PortfolioCard({super.key, required this.projectName, required this.projectDescription, required this.projectImage, required this.githubRepositoryLink, required this.netlifySiteLink});


  @override
  Widget build(BuildContext context) {
    return GlassmorphicFlexContainer(
      borderRadius: 20,
      blur: 20,
      padding: const EdgeInsets.all(5),
      alignment: Alignment.bottomCenter,
      border: 2,
      linearGradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.white.withOpacity(0.3),
            Colors.white.withOpacity(0.05),
          ],
          stops:const [
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(projectImage),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Text(
             projectName,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            addVerticalSpacing(10),
            Text(
              projectDescription,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
            addVerticalSpacing(10),
Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    launchURL(githubRepositoryLink);
                  },
                  child: const Text(
                    'View on Github',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    launchURL(netlifySiteLink);
                  },
                  child: const Text(
                    'Launch on Netlify',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
