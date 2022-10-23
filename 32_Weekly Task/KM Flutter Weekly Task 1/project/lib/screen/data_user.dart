import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weekly_task/model/about_models.dart';
import 'package:weekly_task/screen/home_page.dart';

class DataUser extends StatefulWidget {
  const DataUser({super.key});

  @override
  State<DataUser> createState() => _DataUser();
}

class _DataUser extends State<DataUser> {
  late SharedPreferences registerdata;
  String username = "";
  String email = "";
  String message = "";

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AboutModel>(context);
    provider.initial();

    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 19, 4, 26),
      appBar: AppBar(
        title: Text("Data User"),
        backgroundColor: Color.fromARGB(255, 19, 4, 26),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<AboutModel>(
              builder: (context, value, child) {
                return Text("Hello, ${value.username}");
              },
            ),
            SizedBox(
              height: 10,
            ),
            Consumer<AboutModel>(
              builder: (context, value, child) {
                return Text(value.email);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Consumer<AboutModel>(
              builder: (context, value, child) {
                return Text(value.message);
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
                  provider.deleteMessage(message);

                  // logindata.remove(email);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                },
                child: Text("LogOut Data User")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    )),
                child: Text("Back To HomePage")),
            SizedBox(
              height: 10,
            ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/dota2.png',
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'DOTA 2',
                style: TextStyle(
                  color: Color.fromARGB(255, 175, 9, 9),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          ],
        ),
      ),
    );
  }
}
