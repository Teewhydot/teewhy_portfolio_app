import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slider_button/slider_button.dart';
import 'package:teewhy_portfolio_app/Reusable/skills.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SliderButton(
        backgroundColor: Colors.white.withOpacity(0.7),
        radius: 20,
        buttonSize: 60,
        buttonColor: Colors.white.withOpacity(0.5),
        vibrationFlag: true,
        highlightedColor: Colors.white.withOpacity(0.5),
        boxShadow: const BoxShadow(
          color: Colors.grey,
          blurRadius: 10,
          spreadRadius: 1,
          offset: Offset(0, 3),
        ),
        width: MediaQuery.of(context).size.width,
        action: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const Skills()));
        },
        label:  Text(
          "Slide to Proceed",
          style: TextStyle(
              color: const Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17.sp),
        ),
        icon: const Text(
          ">",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 44,
          ),
        ),


      ),
    ));
  }
}
