import 'package:coba_section24/task1/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';
import 'package:provider/provider.dart';

import 'home_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final fromKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _pwController = TextEditingController();
  final _pnController = TextEditingController();

  // late SharedPreferences logindata;
  // late bool newUser;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   checklogin();
  // }

  // void checklogin() async {
  //   logindata = await SharedPreferences.getInstance();
  //   newUser = logindata.getBool("login") ?? true;

  //   if (newUser == false) {
  //     Navigator.pushAndRemoveUntil(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => const MyHomeScreen(),
  //         ),
  //         (route) => false);
  //   }
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _emailController.dispose();
    _pwController.dispose();
    _pnController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    userProvider.checkRegister;
    return  Scaffold(
        appBar: AppBar(
          title: const Text("Register"),
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: fromKey,
            child: ListView(
              children: [
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.account_circle_rounded),
                    labelText: "Name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value != null && value.length < 4) {
                      return "Enter at least 4 characters";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email_rounded),
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (email) {
                    if (email != null && !EmailValidator.validate(email)) {
                      return "Enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _pnController,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone_android_rounded),
                    labelText: "Phone Number",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter Phone Number";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _pwController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.password_rounded),
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value != null && value.length < 5) {
                      return "Enter Password minimal 5 characters";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    final isValidForm = fromKey.currentState!.validate();
                    String username = _nameController.text;
                    String email = _emailController.text;
                    if (isValidForm) {
                       userProvider.addBool(false);
                      userProvider.setName(username);
                      userProvider.setEmail(email);
                    }
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomeScreen(),
                        ),
                        (route) => false);
                  },
                  child: Text("login"),
                )
              ],
            ),
          ),
        ),
      );

  }
}
