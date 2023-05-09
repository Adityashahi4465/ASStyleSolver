import 'package:asstylesolver/features/onboarding/screens/onboarding.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 255, 255, 255)),
          useMaterial3: true,
          textTheme:
              const TextTheme(displayLarge: TextStyle(color: Colors.white))),
      home: const OnBoardingScreen(),
    );
  }
}
