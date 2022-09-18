import 'package:flutter/material.dart';
import 'package:teewhy_portfolio_app/Reusable/constants.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/custom_app_bar.dart';
import 'package:teewhy_portfolio_app/Reusable/widgets/profile_container.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {

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
            const CustomAppBar(
              'My Portfolio',
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  color: Colors.white,
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  Expanded(
                    flex: 4,
                    child: ProfileContainer(
                        'assets/images/bg', 'Hi there,\nI am Abubakar Issa', 'Flutter Developer'),
                  ),
                ],
              ),
            )


          ],
        ),
      ),
    );
  }
}
