part of 'food_bloc.dart';

@immutable
abstract class FoodState extends Equatable {
  const FoodState();

  @override
  List<Object> get props => [];
}

class FoodInitial extends FoodState {}

class FoodLoading extends FoodState {}

class FoodFailure extends FoodState {}

class FoodEmpty extends FoodState {}

class FoodListState extends FoodState {
  final List<FoodModel>? data;
  const FoodListState({this.data});
}

