import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/app_bar%20button.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/neumorphic_container.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/portfolio_card.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  bool glassMode = false;

  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    final textColor = providerListen.isDarkMode ? Colors.white : Colors.black;
    final iconColor = providerListen.isDarkMode ? Colors.white : Colors.black;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          providerListen.isDarkMode ? kScaffoldColorDarkMode : kScaffoldColor,
      body: Column(
        children: [
          scaffoldSpacing,
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: NeumorphicContainer(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.w),
                      child: Text(
                        'My portfolio',
                        style: TextStyle(
                            color: textColor, fontSize: 20.sp),
                      ),
                    ),
                    Row(
                      children: [
                              Padding(
                                padding: EdgeInsets.only(right: 20.r),
                          child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: AppbarButton(
                                icon: Icon(
                                  color: iconColor,
                                  Icons.arrow_back_ios,
                                  size: 30.sp,
                                ),
                              )),
                        ),
                            ],
                          ),
                        ],
                      ),
                      width: width.w,
                      height: 100.0.h,
                      color: Colors.grey[300]),
                ),
                addVerticalSpacing(10),
                SizedBox(
                  height: 650.h,
                  child: ListView(
                    children: [
                      const PortfolioCardNeurmorphic(
                          projectName: 'Calc',
                          projectDescription: "Basic calculator app",
                          githubRepositoryLink:
                              'https://github.com/Teewhydot/calc',
                          netlifySiteLink:
                              'https://calculater-app.netlify.app/#/'),
                      addVerticalSpacing(10),
                      const PortfolioCardNeurmorphic(
                          projectName: 'Rock Paper Scissors',
                          projectDescription: "Rock paper Scissors Game",
                          githubRepositoryLink:
                              'https://github.com/Teewhydot/rock_paper_scissors',
                    netlifySiteLink:
                        'https://rockpaperscissors-lizardspock.netlify.app/'),
                addVerticalSpacing(10),
                const PortfolioCardNeurmorphic(
                    projectName: 'Clone Chat',
                    projectDescription: "Chat with your clones",
                    githubRepositoryLink:
                        'https://github.com/Teewhydot/clone_chat',
                    netlifySiteLink: 'https://clone-chatapp.netlify.app/'),
                addVerticalSpacing(10),
                const PortfolioCardNeurmorphic(
                    projectName: 'Foodly',
                    projectDescription:
                        "Order food from your favourite restaurant",
                    githubRepositoryLink: 'https://github.com/Teewhydot/foodly',
                    netlifySiteLink: 'https://foodly001.netlify.app'),
              ],
                  ),
                ),
              ],
            ),
          );
  }
}
