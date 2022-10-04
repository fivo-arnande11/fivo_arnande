import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

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
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return CreateContact();
              },
            ));
          },
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
        return ContactPage(contact: contact,);
      } else {
        return ContactisEmpty();
      }
    },
  );
}

class ContactisEmpty extends StatelessWidget {
  const ContactisEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.people),
          Text(
            "Your Contact is Empty",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  void AddContact(GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    _contacts.removeAt(index);
    notifyListeners();
  }
}

class GetContact {
  final String id;
  final String name;
  final String phone;
  GetContact({
    required this.id,
    required this.name,
    required this.phone,
  });
}

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
    required this.contact,
  }) : super(key: key);
  final Contact contact;

  @override
  Widget build(BuildContext context) {
    final contactItems = contact.contacts;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: contactItems.length,
        itemBuilder: (context, index) {
          GetContact item = contactItems[index];
          return buildContactItem(context, item, index);
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 16,
          );
        },
      ),
    );
  }

  Widget buildContactItem(BuildContext context, GetContact item, int index) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.person_pin,
              size: 40,
              color: Colors.grey[600],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.name,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                Text(
                  item.phone,
                  style: TextStyle(
                      fontSize: 14, color: Colors.black.withOpacity(0.5)),
                ),
              ],
            ),
          ),
          IconButton(
              onPressed: () {
                contact.deleteContact(
                  index,
                );
              },
              icon: Icon(
                Icons.delete,
                color: Colors.grey[600],
              ))
        ],
      ),
    );
  }
}

class CreateContact extends StatefulWidget {
  const CreateContact({
    Key? key
    }) : super (key: key);

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
                  
                  
                  child: const Text("Create Contact"))
            ],
          ),
        ),
      ),
    );
  }
}
