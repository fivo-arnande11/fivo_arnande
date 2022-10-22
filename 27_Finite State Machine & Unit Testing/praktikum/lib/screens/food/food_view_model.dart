import 'package:flutter/material.dart';

import '../../api/food_api.dart';
import '../../model/food_model.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class FoodViewModel with ChangeNotifier {
  List<Food> _foods = [];
  List<Food> get foods => _foods;
  FoodViewState _state = FoodViewState.none;
 FoodViewState get state => _state;

  changeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFoods() async {
    changeState(FoodViewState.loading);

    try {
      FoodAPI foodAPI =FoodAPI();
      final c = await foodAPI.getFood();
      _foods = c;
      notifyListeners();
      changeState(FoodViewState.none);
    } catch (e) {
      changeState(FoodViewState.error);
    }
  }
}
