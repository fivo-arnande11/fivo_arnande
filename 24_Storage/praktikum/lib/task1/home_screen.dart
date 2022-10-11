import 'package:coba_section24/task1/provider.dart';
import 'package:coba_section24/task1/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  late SharedPreferences registerdata;
  String username = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserProvider>(context);
    provider.initial();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserProvider>(
              builder: (context, value, child) {
                return Text("Hello, ${value.username}");
              },
            ),
            SizedBox(
              height: 10,
            ),
            Consumer<UserProvider>(
              builder: (context, value, child) {
                return Text(value.email);
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  // logindata.setBool("login", true);
                  provider.addBool(true);
                  provider.deleteName(username);
                  provider.deleteEmail(email);

                  // logindata.remove(email);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  );
                },
                child: Text("LogOut"))
          ],
        ),
      ),
    );
  }
}
