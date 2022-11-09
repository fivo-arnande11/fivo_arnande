import 'package:circular_clip_route/circular_clip_route.dart';
import 'package:flutter/material.dart';
import 'package:mini_project/constants/colors.dart';
import 'package:mini_project/models/recentadded_viewmodels.dart';
import 'package:mini_project/pages/DetailPage/detail_page.dart';
import 'package:provider/provider.dart';


class RecentsAdded extends StatefulWidget {
  const RecentsAdded({
    Key? key,
  }) : super(key: key);

  @override
  State<RecentsAdded> createState() => _RecentsAddedState();
}

class _RecentsAddedState extends State<RecentsAdded> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var animeViewModel = Provider.of<AnimeViewModel>(context, listen: false);
      await animeViewModel.getAllData();
    });
  }

  Widget body(AnimeViewModel animeViewModel) {
    final isLoading = animeViewModel.state == AnimeViewState.loading;
    final isError = animeViewModel.state == AnimeViewState.error;
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text(
          'Something went wrong :(',
          style: TextStyle(color: AnimeUI.cyan),
        ),
      );
    }

    return _buildanime(animeViewModel);
  }

  @override
  Widget build(BuildContext context) {
    final animeViewModel = Provider.of<AnimeViewModel>(context);
    return Expanded(child: body(animeViewModel));
  }
}

Widget _buildanime(AnimeViewModel animeViewModel) {
  final animevm = animeViewModel.animes;
  final recentlykey = GlobalKey();

  return ListView.builder(
    key: recentlykey,
    itemCount: 8,
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.only(left: 20, top: 5),
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.only(right: 20),
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
                    author: animevm[index].author.toString(),
                    name: animevm[index].name.toString(),
                    description: animevm[index].description.toString(),
                    view: animevm[index].view.toString(),
                    image: animevm[index].image.toString(),
                    genres: animevm[index].genres.toString(),
                  ),
                  expandFrom: recentlykey.currentContext!,
                ));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network("${animevm[index].image}", fit: BoxFit.cover),
          ),
        ),
      );
    },
  );
}
