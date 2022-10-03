import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';

class AppbarButton extends StatelessWidget {
  final Icon icon;

  const AppbarButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    final providerListen = Provider.of<DesignModeProvider>(context);
    return Container(
      width: 50.w,
      height: 40.h,
      decoration: BoxDecoration(
        color:
            providerListen.isDarkMode ? Colors.grey.shade600 : Colors.black26,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: icon,
    );
  }
}
