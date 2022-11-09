import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/pages/AboutPage/about_page.dart';
import 'package:mini_project/pages/HomePage/component/available.dart';
import 'package:mini_project/pages/HomePage/component/comming_soon.dart';
import 'package:mini_project/pages/HomePage/component/header.dart';
import 'package:mini_project/pages/HomePage/component/recents.dart';
import 'package:mini_project/widgets/profile_sheet.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Color.fromARGB(255, 8, 97, 85),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              context: context,
              // TODO 22:mengganti Container pada builder showModalBottomSheet menjadi ProfileSheet()
              builder: (context) => const ProfileSheet(),
            );
          },
          icon: const Icon(Icons.account_circle),
        ),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage(),));
          }, icon: Icon(Icons.info_outlined)),
        ],
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 39, 44),
        automaticallyImplyLeading: false,
        title: const Text(
          "MyAnime!",
          style: TextStyle(color: AnimeUI.cyan),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(children: const [
          Header(),
          CommingSoon(),
          Recents(),
          SizedBox(
            height: 10,
          ),
          Available(),
        ]),
      ),
    
    );
  }
}
