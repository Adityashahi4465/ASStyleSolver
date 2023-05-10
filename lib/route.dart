import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/auth/screeen/login_screen.dart';
import 'features/home_screen/screens/home_screen.dart';
import 'features/onboarding/screens/onboarding.dart';

final loggedOutRouter = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(
          child: OnboardingWrapper(),
        ),
    '/login': (_) => const MaterialPage(
          child: LoginScreen(),
        ),
  },
);

final loggedInRouter = RouteMap(
  routes: {
    '/': (_) => const MaterialPage(
          child: HomeScreen(),
        ),
  },
);

class OnboardingWrapper extends StatelessWidget {
  const OnboardingWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _checkFirstTime(),
      builder: (context, snapshot) {
        if (snapshot.hasData && snapshot.data!) {
          return OnBoardingScreen(
            onComplete: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setBool('isFirstTime', false);
              Routemaster.of(context).replace('/login');
            },
          );
        } else {
          return LoginScreen();
        }
      },
    );
  }

  Future<bool> _checkFirstTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isFirstTime') ?? true;
  }
}
