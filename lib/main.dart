import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'modules/splash_screen/splash_screen.dart';
import 'shared/core/theme/theme_data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: themeData,
    ),
  );
}
