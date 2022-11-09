import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';


class DetailScreen extends StatelessWidget {
  final String image;
  final String name;
  final String author;
  final String description;
  final String view;
  final String genres;

  const DetailScreen({
    super.key,
    required this.image,
    required this.name,
    required this.author,
    required this.description,
    required this.view,
    required this.genres,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 3, 39, 44),
          centerTitle: true,
          title: const Text(
            "MyAnime!",
            style: TextStyle(color: AnimeUI.cyan),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: 
          ListView(
            children: [
              Container(
                width: 300,
                height: 300,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      image,
                      fit: BoxFit.fill,
                    )),
              ),
              titleSection(name, author, genres,view),
              textSection(description)
              // buttonSection(),
              ,
            ],
          ),
        ));
  }
}

// Widget buttonSection() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//     children: [
//       //   buildButton(Icons.share, Colors.blue, 'Share'),
//       //   buildButton(Icons.star, Colors.blue, 'Favorites'),
//     ],
//   );
// }

Widget titleSection(name, author, genres,view) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(
        height: 5,
      ),
      Text(
        name,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            author,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
          ),
        
          Text(view,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
        ],
      ),
      const SizedBox(
        height: 5,
      ),
      SizedBox(
        // color: Colors.red,
        width: double.infinity,
        child: Text(
          genres,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.cyan, fontSize: 15),
          textAlign: TextAlign.center,
        ),
      )
    ],
  );
}

Widget textSection(description) {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Text(
      description,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
    ),
  );
}
