import 'package:asstylesolver/features/onboarding/screens/onboarding.dart';
import 'package:asstylesolver/route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 255, 255, 255)),
          useMaterial3: true,
          textTheme:
              const TextTheme(displayLarge: TextStyle(color: Colors.white))),
      routerDelegate: RoutemasterDelegate(
        routesBuilder: ((_) => loggedOutRouter),
      ),
      routeInformationParser: const RoutemasterParser(),      // This was causing the error
    );
  }
}
