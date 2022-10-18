import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user.dart';
import '../../service/services.dart';
import 'home_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String resultDio = '';
  List<User> user = [];

  final _nameController = TextEditingController();
  final _jobController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Provider.of<HomeViewModel>(context, listen: false).getUser();
    bool isLoading = Provider.of<HomeViewModel>(context).isLoading;
    List<Data> userData = Provider.of<HomeViewModel>(context).userData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _jobController,
              decoration: const InputDecoration(
                labelText: 'Job',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final response = await MyService().fetchUser();
                    resultDio = response.toString();

                    List<dynamic> data = response['data'];
                    user = data
                        .map(
                          (e) => User.fromJson(e),
                        )
                        .toList();
                    setState(() {});
                  },
                  child: const Text('GET'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final response = await MyService().createUser(
                      name: _nameController.text,
                      job: _jobController.text,
                    );
                    resultDio = response.toString();
                    setState(() {});
                  },
                  child: const Text('POST'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final response = await MyService().updateUser(
                      name: _nameController.text,
                      job: _jobController.text,
                    );
                    resultDio = response.toString();
                    setState(() {});
                  },
                  child: const Text('PUT'),
                ),
                ElevatedButton(
                  onPressed: () async {
                    final response = await MyService().deleteUser();
                    resultDio = response.toString();
                    setState(() {});
                  },
                  child: const Text('DELETE'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Result',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              resultDio.toString(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Result Data (Future Builder)',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 500,
              width: 500,
              child: isLoading == true && userData.isEmpty
                  ? CircularProgressIndicator()
                  : ListView.builder(
                      itemCount: userData.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage:
                                      NetworkImage(userData[index].avatar!),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('ID : ${userData[index].id}'),
                                      Text('Email : ${userData[index].email}'),
                                      Text(
                                          'Name : ${userData[index].firstName} ${userData[index].lastName}'),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
