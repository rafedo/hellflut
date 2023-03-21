import 'package:flutter/foundation.dart';
import 'package:hellpro/done_food_list.dart';
import 'package:hellpro/model/food.dart';

class DoneFoodProvider extends ChangeNotifier {
  final List<Food> _doneFoodList = [];

  List<Food> get doneFoodList => _doneFoodList;

  void complete(Food food, bool isDone) {
    isDone ? _doneFoodList.add(food) : _doneFoodList.remove(food);
    notifyListeners();
  }
}
