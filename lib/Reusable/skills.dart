import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/skill_card.dart';
import 'package:teewhy_portfolio_app/settings.dart';

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
            image: AssetImage('assets/images/bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            addVerticalSpacing(30),
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
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) =>
                                const Settings());
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
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children:const [
                  SkillCard(skillName: 'Flutter', skillIcon: Icon(Icons.add), skillColor: Colors.blue),
                  SkillCard(skillName: 'Dart', skillIcon: Icon(Icons.add), skillColor: Colors.yellow),
                  SkillCard(skillName: 'Firebase', skillIcon: Icon(Icons.add), skillColor: Colors.black),
                  SkillCard(skillName: 'API', skillIcon: Icon(Icons.add), skillColor: Colors.green),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
