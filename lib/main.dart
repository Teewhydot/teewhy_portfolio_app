import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teewhy_portfolio_app/provider/design_mode_provider.dart';

import 'screens/home.dart';

void main() {
  runApp(ChangeNotifierProvider( create: (context)=> DesignModeProvider(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}