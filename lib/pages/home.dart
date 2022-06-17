import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/bloc/food_bloc.dart';
import 'package:food/model/food_model.dart';
import 'package:food/pages/detail.dart';
import 'package:food/utils/constants.dart';
import 'package:food/utils/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() {
    context.read<FoodBloc>().add(const ListFoodEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLOR_BG_BODY,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              "List Food ",
              style: TEXT_THEME_DEFAULT.headline4,
            ),
            const SizedBox(
              height: 6,
            ),
            const Locations(
              position: 'center',
            )
          ],
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: COLOR_BG_BODY,
      ),
      body: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          if (state is FoodLoading) {
            return const Center(child: CircularProcessLoad());
          } else if (state is FoodListState) {
            return GridView.count(
              primary: false,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              crossAxisCount: 2,
              childAspectRatio: (2 / 2.5),
              children: state.data!
                  .map((e) => CardItem(
                        foodModel: e,
                      ))
                  .toList(),
            );
          } else {
            return const Center(child: Text('Failed load data'));
          }
        },
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final FoodModel? foodModel;
  const CardItem({Key? key, this.foodModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Detail(
                    id: foodModel!.idMeal,
                  )),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: COLOR_GREY.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            Expanded(
              flex: 5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: FadeInImage.assetNetwork(
                  placeholder: 'assets/images/placeholder.png',
                  image: foodModel!.strMealThumb!,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(9),
                child: Text(
                  foodModel!.strMeal!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TEXT_THEME_DEFAULT.bodyText1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
