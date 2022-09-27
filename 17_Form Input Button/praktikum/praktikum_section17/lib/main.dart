import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text("Contacts"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all()),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            child: Text(
              "Name : M. Fivo Arnande",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all()),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(5),
            child: Text(
              "No.Telpon : 08978991877",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CreateNewContact()));
            },
          ),
        ],
      ),
    );
  }
}

class CreateNewContact extends StatelessWidget {
  var nameController = TextEditingController();
  var telponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create New Contact'),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              fillColor: Colors.blueGrey,filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(),
              ),
              labelText: "Name *",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: telponController,
            decoration: InputDecoration(
              fillColor: Colors.blueGrey,filled: true,
              border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide() 
              ),
              labelText: "No.Telpon *",
            ),
          ),
           SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Data'),
                      content: Text(
                          'Name : ${nameController.text}\n\nNo.Telpon : ${telponController.text}'),
                    );
                  });
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
