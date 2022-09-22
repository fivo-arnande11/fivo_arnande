import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

import 'chatitem.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
   static Faker faker = Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("JSON ListView in Flutter"),
        ),
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ChatItem(
                name: faker.person.firstName(),
                message: faker.lorem.sentence(),
                image: "https://picsum.photos/id/${index+20}/200/100",
              );
            }),
      ),
    );
  }
}
