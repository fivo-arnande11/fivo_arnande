import 'package:coba_section24/task1/home_screen.dart';
import 'package:coba_section24/task1/provider.dart';
import 'package:coba_section24/task1/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: MyHomeScreen(),
        routes: {
          "/": (context) => RegisterScreen(),
          "/MyhomeScreen" : (context) => MyHomeScreen()
  },
      ),

    );
  }
}
