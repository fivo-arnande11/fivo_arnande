import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/widgets/about_widget.dart';
import 'package:flutter_weekly_1/widgets/button_widget.dart';
import 'package:flutter_weekly_1/widgets/drawer_widget.dart';
import 'package:flutter_weekly_1/widgets/form_widget.dart';
import 'package:flutter_weekly_1/widgets/welcome_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1F1D2B),
      appBar: AppBar(
        backgroundColor: Color(0xFF1F1D2B),
        title: Row(
          children: [
            Image.asset(
              'images/dota2.png',
              fit: BoxFit.contain,
              height: 32,
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Goys Academy',
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: ListView(
          children: [
            WelcomeWidget(),
            FormWidget(
              title: 'Username',
              hintText: 'Your Full Name',
              icon: 'images/icon_user.png',
            ),
            FormWidget(
              title: 'Email',
              hintText: 'Your Email Address',
              icon: 'images/icon_email.png',
            ),
            FormWidget(
              title: 'Message',
              hintText: 'Your Message',
              icon: 'images/icon_chat.png',
            ),
            Container(
              width: 50,
              height: 50,
              margin: const EdgeInsets.only(top: 30),
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF6C5ECF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Submit',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            AboutWidget(),
          ],
        ),
      ),
      endDrawer: DrawerWidget(),
    );
  }
}
