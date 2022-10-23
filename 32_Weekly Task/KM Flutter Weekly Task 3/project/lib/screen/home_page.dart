import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly_task/model/about_models.dart';
import 'package:weekly_task/screen/data_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final fromKey = GlobalKey<FormState>();
final _nameController = TextEditingController();
final _emailController = TextEditingController();
final _msgController = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _nameController.dispose();
  //   _emailController.dispose();
  //   _msgController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<AboutModel>(context, listen: false);
    userProvider.checkRegister;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 4, 26),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 19, 4, 26),
        title: Row(
          children: [
            Image.asset(
              "assets/dota2.png",
              fit: BoxFit.contain,
              height: 45,
            ),
            SizedBox(
              width: 5,
            ),
            Text("DOTA 2"),
          ],
        ),
      ),
      body: ListView(
        children: [
          ImageScreen(),
          SizedBox(
            height: 25,
          ),
          Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            key: fromKey,
            child: TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                fillColor: Color.fromARGB(255, 175, 10, 10),
                // focusColor: Color.fromARGB(255, 211, 12, 12),
                filled: true,
                prefixIcon: Icon(Icons.account_circle_rounded),
                labelText: "Username",
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
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              fillColor: Color.fromARGB(255, 175, 10, 10),
              // focusColor: Color.fromARGB(255, 211, 12, 12),
              filled: true,
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
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: _msgController,
            decoration: const InputDecoration(
              fillColor: Color.fromARGB(255, 175, 10, 10),
              // focusColor: Color.fromARGB(255, 211, 12, 12),
              filled: true,
              prefixIcon: Icon(Icons.message_outlined),
              labelText: "Message",
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value != null && value.length < 5) {
                return "Add Message Min 5 Huruf";
              } else {
                return null;
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                final isValidForm = fromKey.currentState!.validate();
                String username = _nameController.text;
                String email = _emailController.text;
                String message = _msgController.text;
                if (isValidForm) {
                  userProvider.addBool(true);
                  userProvider.setName(username);
                  userProvider.setEmail(email);
                  userProvider.setMessage(message);
                }
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataUser(),
                    ),
                    (route) => false);
              },
              child: Text(
                "Submit/LihatDataUser",
              )),
          const SizedBox(
            height: 40,
          ),
          AboutUs()
        ],
      ),
      endDrawer: DrawerWidget(),
    );
  }
}

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset("assets/screen_dota2.png"),
      Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: const [
            Text(
              "You should've stopped when you lost the advantage, I crossed the world to win this day. I will not fail now. If I cannot outfight them, I will outsmart them.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 10, 10),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            // Text(
            //   "",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: Color.fromARGB(255, 175, 10, 10),
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            // Text(
            //   "",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //       color: Color.fromARGB(255, 175, 10, 10),
            //       fontWeight: FontWeight.bold,
            //       fontSize: 20),
            // ),
            // SizedBox(
            //   height: 15,
            // ),
            Text(
              '"Legion Commander"',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 10, 10),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    ]);
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 19, 4, 26),
      child: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Contact Us")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("About Us")),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Login")),
            ],
          ),
        ],
      ),
    );
  }
}

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text(
            "About Us",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 175, 10, 10)),
          ),
          const SizedBox(
            height: 15,
          ),
          Image.asset(
            "assets/about_dota2.jpeg",
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Dota 2 is a multiplayer online battle arena (MOBA) video game in which two teams of five players compete to destroy a large structure defended by the opposing team known as the 'Ancient' whilst defending their own.",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 175, 10, 10),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/dota2.png',
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              const Text(
                'DOTA 2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



// class FormInput extends StatefulWidget {
//   const FormInput({super.key});

//   @override
//   State<FormInput> createState() => _FormInputState();
// }

// class _FormInputState extends State<FormInput> {
//   final fromKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _msgController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Form(
//             autovalidateMode: AutovalidateMode.onUserInteraction,
//             key: fromKey,
//             child: ListView(
//               children: [
//                 TextFormField(
//                   controller: _nameController,
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.account_circle_rounded),
//                     labelText: "Username",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value != null && value.length < 4) {
//                       return "Enter at least 4 characters";
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   controller: _emailController,
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.email_rounded),
//                     labelText: "Email",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (email) {
//                     if (email != null && !EmailValidator.validate(email)) {
//                       return "Enter a valid email";
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   controller: _msgController,
//                   decoration: const InputDecoration(
//                     prefixIcon: Icon(Icons.message_outlined),
//                     labelText: "Message",
//                     border: OutlineInputBorder(),
//                   ),
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return "Add Message";
//                     } else {
//                       return null;
//                     }
//                   },
//                 ),
//               ],
//             )),
//       ),
//     );
//   }
// }
