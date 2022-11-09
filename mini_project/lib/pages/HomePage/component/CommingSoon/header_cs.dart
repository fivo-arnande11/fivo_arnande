
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/pages/ViewPage/View_page.dart';


class HeaderTrends extends StatelessWidget {
  const HeaderTrends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              child: Text("Comming Soon",
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                      color: AnimeUI.cyan, fontWeight: FontWeight.bold))),
          TextButton(
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => ViewPage(),));},
            child: Text("View all",  style: TextStyle(color: AnimeUI.cyan, fontWeight: FontWeight.bold),),
            
           
          ),
        ],
      ),
    );
  }
}

