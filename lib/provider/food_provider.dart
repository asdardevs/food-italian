import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:food/model/food_model.dart';

class ApiFoodProvider {
  static Future<List<FoodModel>> getFood() async {
    try {
      log('getFood');

      var response = await Dio()
          .get("https://www.themealdb.com/api/json/v1/1/filter.php?a=Italian");

      return (response.data['meals'] as Iterable)
          .map((e) => FoodModel.fromJson(e))
          .toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }

  static Future<FoodModel> getFoodByid(String id) async {
    try {
      log('getFoodByid');

      var response = await Dio()
          .get("https://www.themealdb.com/api/json/v1/1/lookup.php?i=$id");
      // ignore: avoid_print
      print(response.data['meals'][0]);
      return FoodModel.fromJson(response.data['meals'][0]);
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
