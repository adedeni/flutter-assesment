import 'package:flutter/material.dart';
import 'constants/text_strings.dart';
import 'dashboard/screens/dashboard_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: ATexts.appName,
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}
