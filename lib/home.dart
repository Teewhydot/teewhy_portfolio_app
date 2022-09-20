import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/Reusable/skills.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/profile_container.dart';
import 'package:teewhy_portfolio_app/generated/assets.dart';
import 'package:teewhy_portfolio_app/settings.dart';

import 'Reusable/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 675),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                addVerticalSpacing(40),
                 CustomAppBar(MediaQuery.of(context).size.width,100.0,
                   'Tee_of_GUI',
                   Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 20),
                         child: GestureDetector(
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                 builder: (context) => const Skills(),
                               ),
                             );
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
                       Padding(
                         padding: const EdgeInsets.only(right: 20),
                         child: GestureDetector(
                           onTap: () {
                             showModalBottomSheet(
                               backgroundColor: Colors.transparent,
                                 context: context,
                                 builder: (BuildContext context) => const Settings());
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
                               Icons.settings,
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
             ProfileContainer('assets/images/bg',
                 'Hi there,\nI am Abubakar Issa', 'Flutter Developer',500.0,MediaQuery.of(context).size.width),
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
    );
  }
}
