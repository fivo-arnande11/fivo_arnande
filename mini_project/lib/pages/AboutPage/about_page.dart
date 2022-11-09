import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';


class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AnimeUI.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 39, 44),
        title: const Text("About"),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                Image.asset(("anime_logo.png")),
                const Text(
                  "MyAnime! adalah aplikasi sederhana yang dibuat dengan api dan untuk melengkapi nilai Mini Project. Aplikasi ini dapat melihat detail anime yang tersedia pada aplikasi tersebut, seperti: image, nama, author, view dan sinopsis.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
