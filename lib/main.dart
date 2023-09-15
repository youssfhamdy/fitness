
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/splash_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
