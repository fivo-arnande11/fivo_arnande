// ignore_for_file: deprecated_member_use

import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isStop = true;
  bool isBlack = true;
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Timer Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counter.toString(),
                style: TextStyle(
                    color: (isBlack) ? Colors.black : Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: const Text("Ubah warna 5 detik kemudian"),
                onPressed: () {
                  Timer(const Duration(seconds: 5),(){
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: const Text("Ubah warna secara langsung"),
                onPressed: () {
                  Timer.run(() {
                    isBlack = !isBlack;
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: const Text("Start Timer"),
                onPressed: () {
                  counter = 0;
                  isStop = false;
                  Timer.periodic(const Duration(seconds: 1), (timer) {
                    if (isStop) timer.cancel();
                    setState(() {
                      counter++;
                    });
                   });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              RaisedButton(
                child: const Text("Stop Timer"),
                onPressed: () {
                  isStop = true;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
