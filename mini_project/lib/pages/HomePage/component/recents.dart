
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/pages/HomePage/component/recentadded/recentslist.dart';


class Recents extends StatelessWidget {
  const Recents({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: AspectRatio(
        aspectRatio: 16 / 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text("Recently added",
                    style:TextStyle(
                        color: AnimeUI.cyan, fontWeight: FontWeight.bold, fontSize: 20))),
                        SizedBox(height: 10,),
            const RecentsAdded()
          ],
        ),
      ),
    );
  }
}

