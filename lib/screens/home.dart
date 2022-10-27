import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/app_bar%20button.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/neirmorphic_profile_container.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/neumorphic_container.dart';
import 'package:teewhy_portfolio_app/generated/assets.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';
import 'package:teewhy_portfolio_app/screens/settings.dart';
import 'package:teewhy_portfolio_app/screens/skills.dart';
import 'package:toast/toast.dart';

import '../Reusable/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, _) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TeeWhy(),
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
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    final textColor = providerListen.isDarkMode ? Colors.white : Colors.black;
    final iconColor = providerListen.isDarkMode ? Colors.white : Colors.black;
    return Scaffold(
      backgroundColor:
          providerListen.isDarkMode ? kScaffoldColorDarkMode : kScaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
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
                          'Tee_of_GUI',
                          style: GoogleFonts.leagueSpartan(
                            color: textColor,
                            fontSize: 25.sp,
                          ),
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
                                      PageTransition(
                                          child: const Skills(),
                                          type: PageTransitionType.rightToLeft,
                                          isIos: true));
                                },
                                child: AppbarButton(
                                  icon: Icon(
                                    color: iconColor,
                                    Icons.arrow_forward_ios,
                                    size: 30,
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: GestureDetector(
                                onTap: () {
                                  showModalBottomSheet(
                                      backgroundColor: Colors.transparent,
                                      context: context,
                                      builder: (BuildContext context) =>
                                          const SettingsPage());
                                },
                                child: AppbarButton(
                                  icon: Icon(
                                    color: iconColor,
                                    Icons.settings,
                                    size: 30,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: 100.0.h,
                  color: Colors.white,
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
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
