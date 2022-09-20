import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Badge"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          const Chip(
            padding: EdgeInsets.all(0),
            backgroundColor: Colors.deepPurple,
            label: Text('BADGE', style: TextStyle(color: Colors.white)),
          ),
          Badge(
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.deepPurple,
            borderRadius: BorderRadius.circular(8),
            badgeContent: const Text('BADGE', style: TextStyle(color: Colors.white)),
          
          ),
          ],
      
      ),
    ),
    );
  }
}
