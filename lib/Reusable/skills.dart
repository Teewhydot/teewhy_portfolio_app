import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/skill_card.dart';
import 'package:teewhy_portfolio_app/portfolio.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(''),
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
                    'Skills',
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Portfolio()));
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
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: const [
                      Expanded(
                          child: SkillCard(
                              skillName: 'Flutter',
                              skillIcon: Icon(Icons.padding_outlined),
                              skillColor: Colors.red)),
                      Expanded(
                          child: SkillCard(
                              skillName: 'Flutter',
                              skillIcon: Icon(Icons.padding_outlined),
                              skillColor: Colors.red)),
                    ],
                  ),
                  addVerticalSpacing(10),
                  Row(
                    children: const [
                      Expanded(
                          child: SkillCard(
                              skillName: 'Flutter',
                              skillIcon: Icon(Icons.padding_outlined),
                              skillColor: Colors.red)),
                      Expanded(
                          child: SkillCard(
                              skillName: 'Flutter',
                              skillIcon: Icon(Icons.padding_outlined),
                              skillColor: Colors.red)),
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
