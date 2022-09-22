import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("GridView"),
          ),
          body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, mainAxisSpacing: 4, crossAxisSpacing: 4),
            children: [
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.pets,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(Icons.pregnant_woman, color: Colors.white,),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.spatial_audio_off,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.rounded_corner,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.rowing,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.timeline,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.update,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: const Icon(
                  Icons.access_time_filled,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.all(25),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.back_hand,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.euro,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.g_translate,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.remove_shopping_cart,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.restore_page,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.speaker_notes_off,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.delete_forever,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.accessibility,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.check_circle_outline,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.delete_outline,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.done_outline,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.maximize,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.minimize,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.offline_bolt_rounded,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.swap_horizontal_circle,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.all(25),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Icon(
                  Icons.accessible_forward,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
