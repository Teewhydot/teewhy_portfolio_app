import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/neumorphic_container.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/portfolio_card.dart';
import 'package:teewhy_portfolio_app/generated/assets.dart';
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
    final width = MediaQuery.of(context).size.width;
    return providerListen.isGlassMode ?Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesGb),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
          scaffoldSpacing,
            Row(
              children: [
                CustomAppBarGlass(
                  MediaQuery.of(context).size.width,
                  100.0,
                  'Portfolio',
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: 50.w,
                            height: 40.h,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              color: Colors.black,
                              Icons.arrow_back_ios,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 5,
              child: ListView(
                children: [
                  const Expanded(
                      child: PortfolioCardGlass(
                          projectName: 'Calc',
                          projectDescription: "Calc",
                          projectImage: 'assets/images/bg.jpg',
                          githubRepositoryLink: 'https://google.com',
                          netlifySiteLink: 'www')),
                  addVerticalSpacing(10),
                  const Expanded(
                      child: PortfolioCardGlass(
                          projectName: 'Calc',
                          projectDescription: "Calc",
                          projectImage: 'assets/images/bg.jpg',
                          githubRepositoryLink: 'https//google.com',
                          netlifySiteLink: 'www')),
                  const Expanded(
                      child: PortfolioCardGlass(
                          projectName: 'Calc',
                          projectDescription: "Calc",
                          projectImage: 'assets/images/bg.jpg',
                          githubRepositoryLink: 'https//google.com',
                          netlifySiteLink: 'www')),
                ],
              ),
            ),
          ],
        ),
      ),
    ):Scaffold(
      backgroundColor: Colors.grey[300],
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
                            color: Colors.black, fontSize: 20.sp),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 50.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                color: Colors.black,
                                Icons.arrow_back_ios,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const Portfolio()));
                            },
                            child: Container(
                              width: 50.w,
                              height: 40.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Icon(
                                color: Colors.black,
                                Icons.arrow_forward_ios,
                                size: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                width: width,
                height: 100.0,
                color: Colors.grey[300]),
          ),
          addVerticalSpacing(10),
          Expanded(
            flex: 5,
            child: ListView(
              children: [
                const Expanded(
                    child: PortfolioCardNeurmorphic(
                        projectName: 'Calc',
                        projectDescription: "Calc",
                        projectImage: 'assets/images/bg.jpg',
                        githubRepositoryLink: 'https://google.com',
                        netlifySiteLink: 'www')),
                addVerticalSpacing(10),
                const Expanded(
                    child: PortfolioCardNeurmorphic(
                        projectName: 'Calc',
                        projectDescription: "Calc",
                        projectImage: 'assets/images/bg.jpg',
                        githubRepositoryLink: 'https://google.com',
                        netlifySiteLink: 'www')),
                addVerticalSpacing(10),
                const Expanded(
                    child: PortfolioCardNeurmorphic(
                        projectName: 'Calc',
                        projectDescription: "Calc",
                        projectImage: 'assets/images/bg.jpg',
                        githubRepositoryLink: 'https://google.com',
                        netlifySiteLink: 'www')),
                addVerticalSpacing(10),
                const Expanded(
                    child: PortfolioCardNeurmorphic(
                        projectName: 'Calc',
                        projectDescription: "Calc",
                        projectImage: 'assets/images/bg.jpg',
                        githubRepositoryLink: 'https://google.com',
                        netlifySiteLink: 'www')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
