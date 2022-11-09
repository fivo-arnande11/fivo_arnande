import 'package:flutter/material.dart';
import 'package:mini_project/models/recentadded_viewmodels.dart';
import 'package:mini_project/pages/LoginPage/login_page.dart';


import 'package:provider/provider.dart';

import 'package:splash_screen_view/SplashScreenView.dart';
import 'constants/colors.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => AnimeViewModel(),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget splashscreen = SplashScreenView(
      navigateRoute: const LoginPage(),
      duration: 500,
      imageSize: 600,
      imageSrc: "anime_logo.png",
      backgroundColor: AnimeUI.background,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: AnimeUI.background,
      ),
      home: splashscreen,
    );
  }
}
