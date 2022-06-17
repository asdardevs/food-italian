part of 'food_bloc.dart';

@immutable
abstract class FoodEvent extends Equatable {
  const FoodEvent();

  @override
  List<Object> get props => [];
}

class ListFoodEvent extends FoodEvent {
  final Function(FoodModel)? data;
  final String? valueSearch;
  final Function? onSuccess;
  final Function(String)? onFailed;
  const ListFoodEvent(
      {this.data, this.valueSearch, this.onSuccess, this.onFailed});
}

