import 'dart:async';
import 'package:flutter/material.dart';

import '../../shared/core/images/images_app.dart';
import '../../shared/core/theme/theme_data.dart';
import '../climate/view/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeData.splashColor,
      body: Center(
        child: Image.asset(ImagesApp.logo),
      ),
    );
  }
}
