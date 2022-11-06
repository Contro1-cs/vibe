// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:vibe/user%20onboarding/onboarding_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Welcome to Flutter',
        home: OnboardingScreens());
  }
}
