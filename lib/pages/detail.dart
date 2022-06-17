import 'package:flutter/material.dart';
import 'package:food/model/food_model.dart';
import 'package:food/provider/food_provider.dart';
import 'package:food/utils/constants.dart';
import 'package:food/utils/widget.dart';

class Detail extends StatefulWidget {
  final String? id;
  const Detail({Key? key, this.id}) : super(key: key);

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  late FoodModel data;

  @override
  Widget build(BuildContext context) {
    // (context.read<FoodBloc>().state as FoodLoadedIdState).data!.idMeal!;

    return Scaffold(
      backgroundColor: COLOR_BG_BODY,
      appBar: AppBar(
        title: Text(
          "Details",
          style: TEXT_THEME_DEFAULT.headline4,
        ),
        leading: const BackButton(color: COLOR_GREY),
        elevation: 0,
        backgroundColor: COLOR_BG_BODY,
        centerTitle: true,
      ),
      body: FutureBuilder(
          future: ApiFoodProvider.getFoodByid(widget.id!),
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProcessLoad());
            } else {
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else {
                data = (snapshot.data as FoodModel?)!;
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15.0),
                              topRight: Radius.circular(15.0),
                            ),
                            child: FadeInImage.assetNetwork(
                              placeholder: 'assets/images/placeholder.png',
                              image: data.strMealThumb!,
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height / 4,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              height: 15,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0),
                                  ),
                                  color: COLOR_BG_BODY),
                            ),
                          )
                        ],
                      ),
                      Datail(
                        name: data.strMeal!,
                        instructions: data.strInstructions!,
                        listComposition: ListView(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          children: [
                            (data.strIngredient1! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure1!,
                                    ingredient: data.strIngredient1!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient2! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure2!,
                                    ingredient: data.strIngredient2!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient3! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure3!,
                                    ingredient: data.strIngredient3!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient4! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure4!,
                                    ingredient: data.strIngredient4!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient5! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure5!,
                                    ingredient: data.strIngredient5!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient6! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure6!,
                                    ingredient: data.strIngredient6!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient7! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure7!,
                                    ingredient: data.strIngredient7!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient8! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure8!,
                                    ingredient: data.strIngredient8!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient9! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure9!,
                                    ingredient: data.strIngredient9!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient10! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure10!,
                                    ingredient: data.strIngredient10!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient11! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure11!,
                                    ingredient: data.strIngredient11!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient12! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure12!,
                                    ingredient: data.strIngredient12!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient13! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure13!,
                                    ingredient: data.strIngredient13!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient14! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure14!,
                                    ingredient: data.strIngredient14!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient15! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure15!,
                                    ingredient: data.strIngredient15!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient16! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure16!,
                                    ingredient: data.strIngredient16!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient17! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure17!,
                                    ingredient: data.strIngredient17!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient18! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure18!,
                                    ingredient: data.strIngredient18!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient19! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure19!,
                                    ingredient: data.strIngredient19!,
                                  )
                                : const SizedBox(),
                            (data.strIngredient20! != "")
                                ? ItemComposition(
                                    measure: data.strMeasure20!,
                                    ingredient: data.strIngredient20!,
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }
            }
          }),
    );
  }
}

class Datail extends StatelessWidget {
  final String name, instructions;
  final Widget listComposition;
  const Datail({
    Key? key,
    required this.name,
    required this.listComposition,
    required this.instructions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const sidePadding = EdgeInsets.symmetric(horizontal: 20);
    const onlyPadding = EdgeInsets.only(left: 20, right: 20, bottom: 10);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: sidePadding,
          child: Text(
            name,
            style: TEXT_THEME_DEFAULT.headline3,
          ),
        ),
        const Padding(
          padding: sidePadding,
          child: Locations(
            position: 'left',
          ),
        ),
        const Divider(
          height: 40,
        ),
        Padding(
          padding: onlyPadding,
          child: Text(
            "Composition",
            style: TEXT_THEME_DEFAULT.bodyText1,
          ),
        ),
        listComposition,
        const Divider(
          height: 40,
        ),
        Padding(
          padding: onlyPadding,
          child: Text(
            "Instructions",
            style: TEXT_THEME_DEFAULT.bodyText1,
          ),
        ),
        Padding(
          padding: onlyPadding,
          child: Text(
            instructions,
            style: TEXT_THEME_DEFAULT.bodyText2,
          ),
        ),
      ],
    );
  }
}

class ItemComposition extends StatelessWidget {
  final String measure, ingredient;
  const ItemComposition(
      {Key? key, required this.measure, required this.ingredient})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("-"),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TEXT_THEME_DEFAULT.bodyText2,
              children: <TextSpan>[
                TextSpan(
                  text: measure,
                  style: TEXT_THEME_DEFAULT.bodyText1,
                ),
                TextSpan(text: " $ingredient"),
              ],
            ),
          ),
        )
      ],
    );
  }
}
