import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/reusables/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/reusables/widgets/custom_slider.dart';
import 'package:teewhy_portfolio_app/reusables/widgets/profile_container.dart';

import 'reusables/constants.dart';

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
          children: [
            addVerticalSpacing(30),
            const Expanded(
              flex: 1,
              child: CustomAppBar(
                'Tee_of_GUI',
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    color: Colors.white,
                    Icons.settings,
                    size: 30,
                  ),
                ),
              ),
            ),
            const Expanded(
                flex: 4,
                child: ProfileContainer('assets/images/bg',
                    'Hi there,\nI am Abubakar Issa', 'Flutter Developer')),
            const Expanded(flex: 1, child: CustomSlider()),
          ],
        ),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
