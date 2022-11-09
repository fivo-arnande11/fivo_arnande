import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/pages/HomePage/home_page.dart';

import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final fromKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _pswController = TextEditingController();

  SharedPreferences? logindata;
  late bool newUser;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    logindata = await SharedPreferences.getInstance();
    newUser = logindata!.getBool('login') ?? true;

    if (newUser == false) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ),
          (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AnimeUI.background,
      body: ListView(padding: EdgeInsets.all(15), children: [
        SizedBox(width: 250, height: 350, child: Image.asset("anime_logo.png")),
        Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: fromKey,
          child: Card(
            color: const Color.fromARGB(255, 8, 97, 85),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            child: Container(
              // color: Color.fromARGB(255, 255, 255, 255),
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    "Login to your Account",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.account_circle_rounded),
                      labelText: "Username",
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(50)),
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
                      filled: true,
                      prefixIcon: Icon(Icons.email_rounded),
                      labelText: 'Email',
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(50)),
                    ),
                    validator: (value) {
                      if (value == null || !EmailValidator.validate(value)) {
                        return 'Enter a valid email';
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _pswController,
                    obscureText: true,
                    decoration: InputDecoration(
                      // fillColor: Color.fromARGB(255, 89, 184, 171),
                      // focusColor: Color.fromARGB(255, 211, 12, 12),
                      filled: true,

                      prefixIcon: Icon(Icons.password_outlined),
                      labelText: "Password",
                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(50)),
                    ),
                    validator: (value) {
                      if (value != null && value.length < 6) {
                        return "Enter at least 6 characters";
                      } else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      final isValidForm = fromKey.currentState!.validate();
                      if (fromKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Berhasil login')),
                        );
                      }
                      String username = _nameController.text;
                      String email = _emailController.text;
                      String password = _pswController.text;
                      if (isValidForm) {
                        logindata!.setBool('login', false);
                        logindata!.setString('username', username);
                        logindata!.setString('email', email);
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ),
                            (route) => false);
                      }
                    },
                    child: Text(
                      "sign in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AnimeUI.background,
                      shape: StadiumBorder(),
                      minimumSize: Size.fromHeight(50),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

        // TextFormField(
        //   controller: _emailController,
        //   decoration: const InputDecoration(
        //     fillColor: Color.fromARGB(255, 89, 184, 171),
        //     // focusColor: Color.fromARGB(255, 211, 12, 12),
        //     filled: true,
        //     prefixIcon: Icon(Icons.email_rounded),
        //     labelText: "Email",
        //     border: OutlineInputBorder(),
        //   ),
        //   validator: (email) {
        //     if (email != null && !EmailValidator.validate(email)) {
        //       return "Enter a valid email";
        //     } else {
        //       return null;
        //     }
        //   },
        // ),

        // validator: (value) {
        //   if (value != null && value.length < 5) {
        //     return 'Enter min. 5 characters';
        //   } else {
        //     return null; //form is valid
        //   }
        // },

        // TextFormField(
        //     controller: _pswController,
        //     decoration: const InputDecoration(
        //       fillColor: Color.fromARGB(255, 89, 184, 171),
        //       // focusColor: Color.fromARGB(255, 211, 12, 12),
        //       filled: true,
        //       prefixIcon: Icon(Icons.password),
        //       labelText: "Password",
        //       border: OutlineInputBorder(),
        //     ),
        //     validator: (value) {
        //       if (value != null && value.length < 5) {
        //         return "Add min. 5 characters";
        //       } else {
        //         return null;
        //       }
        //     }),
    
  // onPressed: (() {
            //   Navigator.push(
            //       context, MaterialPageRoute(builder: (context) => MainPage()));
            // }),