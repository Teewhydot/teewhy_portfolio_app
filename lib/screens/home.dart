import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/measure.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/neirmorphic_profile_container.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';
import 'package:teewhy_portfolio_app/screens/skills.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/profile_container.dart';
import 'package:teewhy_portfolio_app/generated/assets.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/neumorphic_container.dart';
import 'package:teewhy_portfolio_app/screens/settings.dart';
import 'package:toast/toast.dart';
import '../Reusable/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TeeWhy(),
      ),
    );
  }
}

class TeeWhy extends StatefulWidget {
  const TeeWhy({Key? key}) : super(key: key);

  @override
  State<TeeWhy> createState() => _TeeWhyState();
}

class _TeeWhyState extends State<TeeWhy> {
  bool glassMode = false;
  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    return providerListen.isGlassMode
        ? Scaffold(
            body: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                   scaffoldSpacing,
                      CustomAppBarGlass(
                        MediaQuery.of(context).size.width,
                        100.0.h,
                        'Tee_of_GUI',
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(right: 20.r),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                  PageTransition(child: const Skills(), type: PageTransitionType.rightToLeft,isIos: true)
                                  );
                                },
                                child: Container(
                                  width: 50.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child:  Icon(
                                    color: Colors.black,
                                    Icons.arrow_forward_ios,
                                    size: 30.sp,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:EdgeInsets.only(right: 20.r),
                              child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) =>
                                          const SettingsGlass());
                                },
                                child: Container(
                                  width: 50.w,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                  child:  Icon(
                                    color: Colors.black,
                                    Icons.settings,
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

                  ProfileContainerGlass(
                      'assets/images/bg',
                      'Hi there,\nI am Abubakar Issa',
                      'Flutter Developer',
                      MediaQuery.of(context).size.width,
                      500.0.h),
                ],
              ),
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.imagesGb),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.grey[300],
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                 scaffoldSpacing,
                    Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: MeasureSize(
                        onChange: (size){
                          var myChildSize = Size.zero;
                          setState(() {
                            myChildSize = size;
                            print(myChildSize);
                          });

                        },
                        child: NeumorphicContainer(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.w),
                                  child: Text(
                                    'Tee_of_GUI',
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
                                          Navigator.push(
                                              context,
                                              PageTransition(child: const Skills(), type: PageTransitionType.rightToLeft,isIos: true)
                                          );
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Icon(
                                            color: Colors.black,
                                            Icons.arrow_forward_ios,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              backgroundColor: Colors.transparent,
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  const SettingsNeumorphic());
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 40.h,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: const Icon(
                                            color: Colors.black,
                                            Icons.settings,
                                            size: 30,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            width: MediaQuery.of(context).size.width,
                            height: 100.0.h,
                            color: Colors.grey[300]),
                      ),
                    ),
                  ],
                ),
                NeumorphicProfileContainer(
                    image: Assets.imagesGb,
                    name: 'Abubakar Issa',
                    desc: 'Flutter Developer',
                    width: MediaQuery.of(context).size.width,
                    height: 500.0.h,
                    color: Colors.grey[300])
              ],
            ),
          );
  }
}
