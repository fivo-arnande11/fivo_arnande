import 'package:dio/dio.dart';
import 'package:mini_project/models/anime/model.dart';


class MyAnime {
  final Dio dio = Dio();

  Future<List<anime>> getAnime() async {
    try {
      final Response response = await dio.get(
              'https://anime-37019-default-rtdb.asia-southeast1.firebasedatabase.app/anime.json'),
          debugPrint;
      (response.data.toString());

      List<dynamic> data = response.data;
      List<anime> Anime = data.map((e) => anime.fromJson(e)).toList();

      return Anime;
    } catch (e) {
      rethrow;
    }
  }
}
