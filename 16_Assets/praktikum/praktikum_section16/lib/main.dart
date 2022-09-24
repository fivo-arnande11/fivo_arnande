import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Image/Detail Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(10),
        mainAxisSpacing: 2,
        crossAxisSpacing: 2,
        crossAxisCount: 3,
        children: [
          FittedBox(
            fit: BoxFit.fill,
            child: GestureDetector(
              child: Hero(
                tag: 'image1',
                child: Image.network(
                  'https://picsum.photos/id/237/200/300'
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const DetailScreen1();
                }));
              },
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: GestureDetector(
              child: Hero(
                tag: 'image2',
                child: Image.network(
                  'https://picsum.photos/id/240/200/300'
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const DetailScreen2();
                }));
              },
            ),
          ),
          FittedBox(
            fit: BoxFit.fill,
            child: GestureDetector(
              child: Hero(
                tag: 'image3',
                child: Image.network(
                  'https://picsum.photos/id/260/200/300'
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return const DetailScreen3();
                }));
              },
            ),
          ),
        ],
      ),
    );
  }
}

class DetailScreen1 extends StatelessWidget {
  const DetailScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: GestureDetector(
        child: SizedBox(
          width:500,
          height: 600,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Hero(
              tag: 'image1',
              child: Image.network(
                'https://picsum.photos/id/237/200/300'
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  const DetailScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: GestureDetector(
        child: SizedBox(
          width: 500,
          height:600,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Hero(
              tag: 'image2',
              child: Image.network(
                'https://picsum.photos/id/240/200/300'
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

class DetailScreen3 extends StatelessWidget {
  const DetailScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: GestureDetector(
        child: SizedBox(
          width: 500,
          height:600,
          child: FittedBox(
            fit: BoxFit.cover,
            child: Hero(
              tag: 'image3',
              child: Image.network(
                'https://picsum.photos/id/260/200/300',
              ),
            ),
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
