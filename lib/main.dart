import 'package:flutter/material.dart';
import 'package:getir/presentation/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Getir',
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
