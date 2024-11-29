// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pepstore/utils/constants/colors.dart';
import 'package:pepstore/utils/theme/theme.dart';

void main() {

  // Todo: Add Widgets Binding
  // Todo: Init Local Storage
  // Todo: Await Native Splash
  // Todo: Initialize Firebase
  // Todo: Initialize Authentication

  
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
    );
  }
}