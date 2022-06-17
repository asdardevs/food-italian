import 'package:flutter/material.dart';
import 'package:food/utils/constants.dart';

class Locations extends StatelessWidget {
  final String position;
  const Locations({Key? key, required this.position}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: (position == 'left')
          ? MainAxisAlignment.start
          : (position == 'center')
              ? MainAxisAlignment.center
              : MainAxisAlignment.end,
      children: [
        const Icon(
          Icons.location_pin,
          color: COLOR_RED,
          size: 14,
        ),
        Text(
          "Italia ",
          style: TEXT_THEME_DEFAULT.subtitle2,
        ),
      ],
    );
  }
}

class CircularProcessLoad extends StatelessWidget {
  const CircularProcessLoad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: .5,
      child: const CircularProgressIndicator(
        color: COLOR_GREY,
      ),
    );
  }
}
