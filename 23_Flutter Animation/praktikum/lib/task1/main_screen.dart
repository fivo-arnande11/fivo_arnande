import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isBig = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isBig = !isBig;
        });
      },
      child: Center(
        child: FittedBox(
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            width: isBig ? 300 : 150,
            height: isBig ? 300 : 150,
            child: Image.network(
              'https://picsum.photos/id/260/200/300',
            ),
          ),
        ),
      ),
    );
  }
}
