import 'package:circular_clip_route/circular_clip_route.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/models/anime/model.dart';
import 'package:mini_project/pages/DetailPage/detail_page.dart';
import 'package:mini_project/service/api_service.dart';


class Available extends StatelessWidget {
  const Available({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final _availableKey = GlobalKey();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Available :',
            style: TextStyle(
                color: AnimeUI.cyan, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        FutureBuilder<List<anime>>(
          key: _availableKey,
          future: MyAnime().getAnime(),
          builder: (context, snapanime) {
            if (snapanime.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else {
              if (snapanime.hasData) {
                return Column(
                    children: List.generate(15, (index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    // padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          CircularClipRoute(
                            reverseCurve: Curves.fastOutSlowIn.flipped,
                            opacity: ConstantTween(1),
                            curve: Curves.fastOutSlowIn,
                            transitionDuration: const Duration(seconds: 1),
                            builder: (context) => DetailScreen(
                              author: snapanime.data![index].author.toString(),
                              name: snapanime.data![index].name.toString(),
                              description:
                                  snapanime.data![index].description.toString(),
                              view: snapanime.data![index].view.toString(),
                              image: snapanime.data![index].image.toString(),
                              genres: snapanime.data![index].genres.toString(),
                            ),
                            expandFrom: _availableKey.currentContext!,
                          ),
                        );
                      },
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            snapanime.data![index].name.toString(),
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                snapanime.data![index].image.toString(),
                                fit: BoxFit.fill,
                                height: size.height * 0.5,
                                width: size.width,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  );
                }).toList());
              }
              return const Center(
                child: Text('Something went wrong :(',
                    style: TextStyle(color: AnimeUI.cyan)),
              );
            }
          },
        ),
      ],
    );
    // Column(
    //   children: [
    //     Container(
    //       height: 150,
    //       width: 350,
    //         child: ClipRRect(
    //           borderRadius: BorderRadius.circular(30),
    //             child: Image.network(

    //                 snapshot.data![index].image.toString(), fit: BoxFit.fill,)
    //                 )
    //                 ),
    //   ],
    // ),
    // FutureBuilder<List<anime>>(
    //   future: MyService().getData(),
    //   builder: (
    //     context,
    //     snapshot,
    //   ) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return const CircularProgressIndicator();
    //     } else {
    //       if (snapshot.hasData) {
    //         return SizedBox(
    //           child: ListView.separated(
    //             padding: const EdgeInsets.all(8),
    //             itemCount: snapshot.data!.length,
    //             itemBuilder: (BuildContext context, int index) {
    //               return InkWell(
    //                 onTap: () {
    //                   Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                         builder: (context) => DetailScreen(
    //                           author:
    //                               snapshot.data![index].author.toString(),
    //                           name: snapshot.data![index].name.toString(),
    //                           description: snapshot
    //                               .data![index].description
    //                               .toString(),
    //                           view: snapshot.data![index].view.toString(),
    //                           image:
    //                               snapshot.data![index].image.toString(),
    //                           genres:
    //                               snapshot.data![index].genres.toString(),
    //                         ),
    //                       ));
    //                 },
    //                 child: ListTile(
    //                   leading: Container(
    //                     height: 100,
    //                     width: 80,
    //                     child: FittedBox(
    //                       fit: BoxFit.fill,
    //                       child: Image.network(
    //                           '${snapshot.data?[index].image}'),
    //                     ),
    //                   ),
    //                   title: Text(
    //                     '${snapshot.data?[index].name}',
    //                     style: TextStyle(
    //                         color: AnimeUI.cyan,
    //                         fontWeight: FontWeight.bold),
    //                   ),
    //                   subtitle: Text(
    //                     'Author: ${snapshot.data?[index].author}',
    //                     style: TextStyle(
    //                         fontWeight: FontWeight.bold,
    //                         color: Colors.white),
    //                   ),
    //                 ),
    //               );
    //             },
    //             separatorBuilder: (BuildContext context, int index) =>
    //                 const Divider(),
    //           ),
    //         );
    //       } else if (snapshot.hasError) {
    //         return Center(
    //             child: Text(
    //           'Something went wrong :(',
    //           style: TextStyle(color: AnimeUI.cyan),
    //         ));
    //       }

    //       return CircularProgressIndicator();
    //     }
    //     return const Text('Tidak ada data');
    //   }

    //   // )
    //   );
  }
}
