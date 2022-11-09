import 'package:flutter/material.dart';
import 'package:mini_project/models/anime/model.dart';
import 'package:mini_project/service/api_service.dart';


enum AnimeViewState {
  none,
  loading,
  error,
}

class AnimeViewModel with ChangeNotifier {
  List<anime> _anime = [];
  List<anime> get animes => _anime;
  AnimeViewState _state = AnimeViewState.none;
  AnimeViewState get state => _state;

  changeState(AnimeViewState f) {
    _state = f;
    notifyListeners();
  }

  getAllData() async {
    changeState(AnimeViewState.loading);

    try {
      MyAnime myAnime = MyAnime();
      final f = await myAnime.getAnime();
      _anime = f;
      notifyListeners();
      changeState(AnimeViewState.none);
    } catch (e) {
      changeState(AnimeViewState.error);
    }
  }
}
