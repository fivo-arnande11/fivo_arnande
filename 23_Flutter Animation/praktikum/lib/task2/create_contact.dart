import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

import 'contact.dart';

class CreateContact extends StatefulWidget {
  const CreateContact({Key? key}) : super(key: key);

  @override
  State<CreateContact> createState() => _CreateContactState();
}

class _CreateContactState extends State<CreateContact> {
  final formkey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var telponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Create Contact"),
        ),
        body: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                    // fillColor: Colors.blueGrey,
                    filled: true,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: "name*"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Add name!";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: telponController,
                decoration: InputDecoration(
                    // fillColor: Colors.blueGrey,
                    filled: true,
                    border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    labelText: "phone number*"),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Add phone number!";
                  }
                  return null;
                },
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40)),
                  onPressed: () {
                    setState(() {
                      formkey.currentState!.validate();
                    });
                    if (nameController.text.isEmpty ||
                        telponController.text.isEmpty) {
                      return;
                    }
                    final contactItem = GetContact(
                      id: const Uuid().v1(),
                      name: nameController.text,
                      phone: telponController.text,
                    );
                    contactProvider.AddContact(contactItem);
                    Navigator.pop(context);
                  },
                  
                  child: const Text("Create Contact")),
            ],
          ),
        ),
      ),
    );
  }
}
