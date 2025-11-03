import 'package:flutter/material.dart';
import 'package:pen/ui/pages/home_page.dart';
import 'package:pen/ui/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'persada ess Nusantara',
      home: SplashScreen(),
      routes: {
        '/home': (context) => const HomePage(),
      },
    );
  }
}

