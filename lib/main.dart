import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';

import 'screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  final isDarkFromSharedPrefs = sharedPreferences.getBool('isDark') ?? false;

  runApp(ChangeNotifierProvider(
      create: (context) => DesignModeProvider(isDarkFromSharedPrefs),
      child: MyApp(
        isGlass: isDarkFromSharedPrefs,
      )));
}

class MyApp extends StatelessWidget {
  final bool isGlass;

  const MyApp({super.key, required this.isGlass});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
