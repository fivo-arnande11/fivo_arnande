import 'package:coba_section25/service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

final Dio dio = Dio();

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});
  final String title;

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

Map<String, dynamic> listdata = {};

class HomeScreenState extends State<HomeScreen> {
  final MyService myService = MyService();

  final fromKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _jobController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
            key: fromKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value != null && value.length < 4) {
                      return "Enter at least 4 characters!";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _jobController,
                  decoration: const InputDecoration(
                    labelText: "Job",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter your Job!";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                        onPressed: () async {
                          final data = await myService.GetUsers();
                          setState(() {
                            listdata = data;
                          });
                        },
                        child: const Text("GET")),
                    ElevatedButton(
                        onPressed: () async {
                          final isValidForm = fromKey.currentState!.validate();
                          if (isValidForm) {
                            final data = await myService.createUser(
                                name: _nameController.text,
                                job: _jobController.text);
                            setState(() {
                              listdata = data;
                            });
                          }
                        },
                        child: const Text("POST")),
                    ElevatedButton(
                        onPressed: () async {
                          final isValidForm = fromKey.currentState!.validate();
                          if (isValidForm) {
                            final data = await myService.updateUser(
                                name: _nameController.text,
                                job: _jobController.text);
                            setState(() {
                              listdata = data;
                            });
                          }
                        },
                        child: const Text("PUT")),
                    ElevatedButton(
                        onPressed: () async {
                          final isValidForm = fromKey.currentState!.validate();
                          if (isValidForm) {
                            await myService.deleteUser();
                            setState(() {
                              listdata.clear();
                            });
                          }
                        },
                        child: const Text("Delete")),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Result(context),
              ],
            )),
      ),
    );
  }
}

Widget Result(BuildContext context) {
  return Container(
    child: Column(children: [
      Text(
        'Result',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 10,
      ),
      Column(
        children: [Text('$listdata')],
      )
    ]),
  );
}
