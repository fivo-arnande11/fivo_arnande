import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Asset GridView"),
        ),
        body: Column(children: <Widget>[
          Flexible(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget> [
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(
                      "assets/aokiji.jpg",
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(
                      "assets/fujitora.jpg",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(
                      "assets/shirohige.jpg",
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(
                      "assets/akainu.jpg",
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
