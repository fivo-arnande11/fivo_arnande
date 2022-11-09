import 'package:circular_clip_route/circular_clip_route.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/constants/shimmer.dart';
import 'package:mini_project/models/anime/model.dart';
import 'package:mini_project/pages/DetailPage/detail_page.dart';


import '../../service/api_service.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);

  @override
  State<ViewPage> createState() => _ViewPage();
}

class _ViewPage extends State<ViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AnimeUI.background,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 39, 44),
        title: Text(
          "List All Anime",
          style: TextStyle(color: AnimeUI.cyan),
        ),
        centerTitle: true,
      ),

      // appBar: AppBar(
      //   title: const Text("Home"),
      //   backgroundColor: Color.fromARGB(255, 89, 184, 171),
      //   automaticallyImplyLeading: false,
      // ),
      body: Center(
        child: FutureBuilder<List<anime>>(
            future: MyAnime().getAnime(),
            builder: (
              context,
              snapanime,
            ) {
              if (snapanime.connectionState == ConnectionState.waiting) {
                return ShimmerList();
              } else {
                if (snapanime.hasData) {
                  final vpkey = GlobalKey();
                  return Center(
                    child: ListView.separated(
                      key: vpkey,
                      padding: const EdgeInsets.all(8),
                      itemCount: snapanime.data!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                CircularClipRoute(
                                  reverseCurve: Curves.fastOutSlowIn.flipped,
                                  opacity: ConstantTween(10),
                                  curve: Curves.fastOutSlowIn,
                                  transitionDuration:
                                      const Duration(seconds: 1),
                                  builder: (context) => DetailScreen(
                                    author: snapanime.data![index].author
                                        .toString(),
                                    name:
                                        snapanime.data![index].name.toString(),
                                    description: snapanime
                                        .data![index].description
                                        .toString(),
                                    view:
                                        snapanime.data![index].view.toString(),
                                    image:
                                        snapanime.data![index].image.toString(),
                                    genres: snapanime.data![index].genres
                                        .toString(),
                                  ),
                                  expandFrom: vpkey.currentContext!,
                                ));
                          },
                          child: ListTile(
                            leading: Container(
                              height: 100,
                              width: 80,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Image.network(
                                    '${snapanime.data?[index].image}'),
                              ),
                            ),
                            title: Text(
                              '${snapanime.data?[index].name}',
                              style: const TextStyle(
                                  color: AnimeUI.cyan,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(
                              'Author: ${snapanime.data?[index].author}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                    ),
                  );
                } else if (snapanime.hasError) {
                  return const Center(
                      child: Text(
                    'Something went wrong :(',
                    style: TextStyle(color: AnimeUI.cyan),
                  ));
                }

                return ShimmerList();
              }
            }),
      ),
      // endDrawer: DrawerWidget()
    );
  }
}




  // child: ListView.builder(
                  //   itemCount: snapshot.data!.length,
                  //   itemBuilder: (context, index) {
                  //     return Column(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Image.network(
                  //             snapshot.data![index].image.toString()),
                  //         Text(snapshot.data![index].name.toString()),
                  //         Text(
                  //             "Decription : ${snapshot.data![index].description.toString()}"),
                  //         Text(
                  //             "Author: ${snapshot.data![index].author.toString()}"),
                  //         Text(
                  //             "Genre: ${snapshot.data![index].genres.toString()}"),
                  //         Text(
                  //             "View: ${snapshot.data![index].view.toString()}"),
                  //       ],
                  //     );
                  //   },
                  // ),