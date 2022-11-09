
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';



class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    
    Container(
          color: AnimeUI.background,
          padding:  const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 5,),
              Row(
                children: [
                   const Expanded(
                    child: Text(
                      'My List Anime Update',
                      style: TextStyle(color: AnimeUI.cyan,fontSize: 20),
                    ),
                  ),
                  
                ],
              ),
              const SizedBox(height: 5),
              const Text(
                "see what's new!",
                style: TextStyle(fontSize: 15,
                              color: Colors.white),
              ),
            ],
          ),
        );
      // ),
      
    // );
  }
}
