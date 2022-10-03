import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';

class PortfolioCardGlass extends StatelessWidget {
  final String projectName;
  final String projectDescription;
  final String githubRepositoryLink;
  final String netlifySiteLink;

  const PortfolioCardGlass(
      {super.key,
      required this.projectName,
      required this.projectDescription,
      required this.githubRepositoryLink,
      required this.netlifySiteLink});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0.r),
      child: GlassmorphicContainer(
        width: 250.w,
        height: 250.h,
        borderRadius: 20.r,
        blur: 20,
        padding:  EdgeInsets.all(5.r),
        alignment: Alignment.bottomCenter,
        border: 2,
        linearGradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white.withOpacity(0.3),
              Colors.white.withOpacity(0.05),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
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
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                ),
              ),
              addVerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      launchURL(
                        githubRepositoryLink, context);
                    },
                    child:  Text(
                      'View on Github',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      launchURL(netlifySiteLink, context);
                    },
                    child: Text(
                      'Launch on Netlify',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class PortfolioCardNeurmorphic extends StatelessWidget {
  final String projectName;
  final String projectDescription;
  final String githubRepositoryLink;
  final String netlifySiteLink;

  const PortfolioCardNeurmorphic(
      {super.key,
        required this.projectName,
        required this.projectDescription,
        required this.githubRepositoryLink,
        required this.netlifySiteLink});

  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    final textColor = providerListen.isDarkMode ? Colors.white : Colors.black;
    return Padding(
      padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, bottom: 10.0.h),
      child: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                projectName,
                style: TextStyle(
                  color: textColor,
                  fontSize: 20.sp,
                ),
              ),
              addVerticalSpacing(10),
              Text(
                projectDescription,
                style: TextStyle(
                  color: textColor,
                  fontSize: 15.sp,
                ),
              ),
              addVerticalSpacing(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      launchURL(
                          githubRepositoryLink, context);
                    },
                    child: Text(
                      'View on Github',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      launchURL(netlifySiteLink, context);
                    },
                    child:  Text(
                      'Launch on Netlify',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        height: 250.h,
        decoration: BoxDecoration(
          color: providerListen.isDarkMode
              ? kBoxDecorationColorDarkMode
              : kBoxDecorationColor,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
          boxShadow: [
            BoxShadow(
              color:
                  providerListen.isDarkMode ? kBoxShadow1DarkMode : kBoxShadow1,
              blurRadius: 10,
              spreadRadius: 1,
              offset: Offset(-5, -5), // changes position of shadow
            ),
            BoxShadow(
              color:
                  providerListen.isDarkMode ? kBoxShadow2darkMode : kBoxShadow2,
              blurRadius: 18,
              spreadRadius: 1,
              offset: const Offset(5, 5), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
