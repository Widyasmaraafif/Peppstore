import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepstore/features/authentication/screens/onboarding/onboarding.dart';
import 'package:pepstore/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: OnBoardingScreen(),
    );
  }
}