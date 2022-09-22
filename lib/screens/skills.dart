import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/neumorphic_container.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/skill_card.dart';
import 'package:teewhy_portfolio_app/generated/assets.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';
import 'package:teewhy_portfolio_app/screens/portfolio.dart';

class Skills extends StatefulWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
  bool glassMode = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final providerListen = Provider.of<DesignModeProvider>(context);
    return providerListen.isGlassMode
        ? Scaffold(
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
                      GlassAppBar(
                        MediaQuery.of(context).size.width,
                        100.0.h,
                        'Skills',
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 20.r),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 50.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child: Icon(
                                    color: Colors.black,
                                    Icons.arrow_back_ios,
                                    size: 30.sp,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 20.r),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(child: const Portfolio(), type: PageTransitionType.rightToLeft,isIos: true)
                                  );
                                },
                                child: Container(
                                  width: 50.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    color: Colors.black,
                                    Icons.arrow_forward_ios,
                                    size: 30.sp,
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          children: [
                            const Expanded(
                                child: SkillCardGlass(
                                    skillName: 'Flutter',
                                    skillIcon: Icon(Icons.padding_outlined),
                                    skillColor: Colors.red)),
                            addHorizontalSpacing(10),
                            const Expanded(
                                child: SkillCardGlass(
                                    skillName: 'Flutter',
                                    skillIcon: Icon(Icons.padding_outlined),
                                    skillColor: Colors.red)),
                          ],
                        ),
                        addVerticalSpacing(10),
                        Row(
                          children: [
                            const Expanded(
                                child: SkillCardGlass(
                                    skillName: 'Flutter',
                                    skillIcon: Icon(Icons.padding_outlined),
                                    skillColor: Colors.red)),
                            addHorizontalSpacing(10),
                            const Expanded(
                                child: SkillCardGlass(
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
          )
        : Scaffold(
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
                              'Skills',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 20.sp),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(right: 20.r),
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
                                    child:  Icon(
                                      color: Colors.black,
                                      Icons.arrow_back_ios,
                                      size: 30.sp,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:  EdgeInsets.only(right: 20.r),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(child: const Portfolio(), type: PageTransitionType.rightToLeft,isIos: true)
                                    );
                                  },
                                  child: Container(
                                    width: 50.w,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(
                                      color: Colors.black,
                                      Icons.arrow_forward_ios,
                                      size: 30.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      width: width.w,
                      height: 100.0.h,
                      color: Colors.grey[300]),
                ),
                addVerticalSpacing(40),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          const Expanded(
                              child: SkillCardNeumorphic(
                            skillName: 'Flutter',
                            skillIcon: Icon(Icons.connected_tv_sharp),
                          )),
                          addHorizontalSpacing(10),
                          const Expanded(
                              child: SkillCardNeumorphic(
                            skillName: 'Flutter',
                            skillIcon: Icon(Icons.connected_tv_sharp),
                          )),
                        ],
                      ),
                      addVerticalSpacing(10),
                      Row(
                        children: [
                          const Expanded(
                              child: SkillCardNeumorphic(
                            skillName: 'Flutter',
                            skillIcon: Icon(Icons.connected_tv_sharp),
                          )),
                          addHorizontalSpacing(10),
                          const Expanded(
                              child: SkillCardNeumorphic(
                            skillName: 'Flutter',
                            skillIcon: Icon(Icons.connected_tv_sharp),
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}
