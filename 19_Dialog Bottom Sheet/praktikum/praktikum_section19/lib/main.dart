import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dialog Bottom Sheet',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        crossAxisCount: 2,
        children: [
          FittedBox(
            fit: BoxFit.fill,
            child: GestureDetector(
              child: Hero(
                tag: 'image1',
                child: Image.network('https://picsum.photos/id/237/200/300'),
              ),
              onTap: () {
               showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet1(),
                );
              },
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: GestureDetector(
              child: Hero(
                tag: 'image2',
                child: Image.network('https://picsum.photos/id/240/200/300'),
              ),
              onTap: () {
                 showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet2(),
                );
              },
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: GestureDetector(
              child: Hero(
                tag: 'image3',
                child: Image.network('https://picsum.photos/id/260/200/300'),
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet3(),
                );
              },
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: GestureDetector(
              child: Hero(
                tag: 'image4',
                child: Image.network('https://picsum.photos/201/300?grayscale'),
              ),
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) => BottomSheet4(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class BottomSheet1 extends StatefulWidget {
  const BottomSheet1({super.key});

  @override
  State<BottomSheet1> createState() => _BottomSheet1State();
}

class _BottomSheet1State extends State<BottomSheet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.network('https://picsum.photos/id/237/200/300'),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Dialog"),
                  actions: [
                    Center(
                        child: Image.network(
                      'https://picsum.photos/id/237/200/300',
                    )),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class BottomSheet2 extends StatefulWidget {
  const BottomSheet2({super.key});

  @override
  State<BottomSheet2> createState() => _BottomSheet2State();
}

class _BottomSheet2State extends State<BottomSheet2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.network('https://picsum.photos/id/240/200/300'),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Dialog"),
                  actions: [
                    Center(
                        child: Image.network(
                      'https://picsum.photos/id/240/200/300',
                    )),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class BottomSheet3 extends StatefulWidget {
  const BottomSheet3({super.key});

  @override
  State<BottomSheet3> createState() => _BottomSheet3State();
}

class _BottomSheet3State extends State<BottomSheet3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.network('https://picsum.photos/id/260/200/300'),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Dialog"),
                  actions: [
                    Center(
                        child: Image.network(
                     'https://picsum.photos/id/260/200/300',
                    )),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class BottomSheet4 extends StatefulWidget {
  const BottomSheet4({super.key});

  @override
  State<BottomSheet4> createState() => _BottomSheet4State();
}

class _BottomSheet4State extends State<BottomSheet4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          child: Image.network('https://picsum.photos/200/300?grayscale'),
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text("Dialog"),
                  actions: [
                    Center(
                        child: Image.network(
                      "https://picsum.photos/200/300?grayscale",
                    )),
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
