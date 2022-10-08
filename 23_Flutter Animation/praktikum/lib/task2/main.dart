import 'package:coba_section23/task2/page_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import 'contact.dart';
import 'contact_page.dart';
import 'contactis_empty.dart';
import 'create_contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Contact(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyAppHome(),
      ),
    );
  }
}

class MyAppHome extends StatelessWidget {
  const MyAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: MyHomePage(),
        floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(AnimasiPageRoute(child: CreateContact())),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

Widget MyHomePage() {
  return Consumer<Contact>(
    builder: (context, contact, child) {
      if (contact.contacts.isNotEmpty) {
        return ContactPage(
          contact: contact,
        );
      } else {
        return ContactisEmpty();
      }
    },
  );
}
