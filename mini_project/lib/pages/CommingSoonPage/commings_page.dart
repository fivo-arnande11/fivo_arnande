import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';



class CommingsPage extends StatelessWidget {
  final String poster;
  final String name;

  const CommingsPage({
    super.key,
    required this.poster,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 39, 44),
        centerTitle: true,
        title: const Text(
          "MyAnime!",
          style: TextStyle(color: AnimeUI.cyan),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            Container(
              height: 500,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  poster,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25),
                  ),
                ),
                Text(
                  "Comming Soon..",
                  style: TextStyle(color: AnimeUI.cyan, fontSize: 30),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
