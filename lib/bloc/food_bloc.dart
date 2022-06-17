import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food/model/food_model.dart';
import 'package:meta/meta.dart';

import '../provider/food_provider.dart';

part 'food_event.dart';
part 'food_state.dart';

class FoodBloc extends Bloc<FoodEvent, FoodState> {
  FoodBloc() : super(FoodInitial()) {
    on<ListFoodEvent>(_listFood);

  }

  void _listFood(ListFoodEvent event, Emitter<FoodState> emitter) async {
    emitter(FoodLoading());
    try {
      List<FoodModel> data = await ApiFoodProvider.getFood();

      emitter(FoodListState(data: data));
    } catch (e) {
      // ignore: avoid_print
      print(e);
      event.onFailed!('Food Failed');
    }
  }


}
