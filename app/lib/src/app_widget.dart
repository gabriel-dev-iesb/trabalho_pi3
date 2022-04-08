// import 'package:aider/src/view/homepage_view.dart';
import 'package:aider/src/features/onboarding/presentation/view/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const OnboardingPage(),
    );
  }
}
