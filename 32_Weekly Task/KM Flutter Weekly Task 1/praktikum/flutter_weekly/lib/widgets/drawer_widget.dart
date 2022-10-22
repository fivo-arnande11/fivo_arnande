import 'package:flutter/material.dart';
import 'package:flutter_weekly_1/widgets/button_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xff1F1D2B),
      child: ListView(
        children: [
          Column(
            children: const [
              ButtonWidget(
                btnTitle: 'Contact Us',
                btnWidth: 150,
              ),
              ButtonWidget(
                btnTitle: 'About Us',
                btnWidth: 150,
              ),
              ButtonWidget(
                btnTitle: 'Login',
                btnWidth: 150,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
