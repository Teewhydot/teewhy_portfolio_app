import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/portfolio_card.dart';



class Portfolio extends StatefulWidget {
  const Portfolio({Key? key}) : super(key: key);

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg(1).jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            addVerticalSpacing(30),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  CustomAppBar(
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
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                 const Expanded(
                      child: PortfolioCard(
                          projectName: 'Calc',
                          projectDescription: "Calc",
                          projectImage: 'assets/images/bg.jpg',
                          githubRepositoryLink: 'https://google.com',
                          netlifySiteLink: 'www')),
                  addVerticalSpacing(10),
                   const Expanded(
                      child: PortfolioCard(
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
    );
  }
}
