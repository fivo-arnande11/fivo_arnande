import 'package:circular_clip_route/circular_clip_route.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/models/anime/anime.dart';
import 'package:mini_project/pages/CommingSoonPage/commings_page.dart';


class ListTrends extends StatelessWidget {
  const ListTrends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _cskey = GlobalKey();
    return Expanded(
      child: LayoutBuilder(builder: (_, constraints) {
        return ListView.builder(
            key: _cskey,
            itemCount: trendsData.length,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 10, left: 20),
            itemBuilder: (_, index) {
              final anime = trendsData[index];
              final style = Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600);
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  height: constraints.maxHeight,
                  width: constraints.maxWidth * .375,
                  child: Column(children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              CircularClipRoute(
                                reverseCurve: Curves.fastOutSlowIn.flipped,
                                opacity: ConstantTween(1),
                                curve: Curves.fastOutSlowIn,
                                transitionDuration: const Duration(seconds: 1),
                                builder: (context) => CommingsPage(
                                    poster: anime.poster, name: anime.name),
                                expandFrom: _cskey.currentContext!,
                              ));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            anime.poster,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(anime.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18)),
                    const SizedBox(height: 7.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 5),
                        Text(
                          'Rating: ${anime.score}',
                          style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 7.5),
                        Text(
                          '# ${anime.number}',
                          style: style?.copyWith(color: AnimeUI.cyan),
                        ),
                      ],
                    )
                  ]),
                ),
              );
            });
      }),
    );
  }
}
