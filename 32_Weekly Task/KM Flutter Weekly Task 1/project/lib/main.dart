import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly_task/model/about_models.dart';
import 'package:weekly_task/screen/data_user.dart';
import 'package:weekly_task/screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AboutModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
      
       routes: {
          "/": (context) => HomePage(),
          "/DataUser" : (context) => DataUser()
  },
      ),
      // title: 'Weekly Task',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      // home: const HomePage(),
    );
  }
}
