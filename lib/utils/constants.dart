import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const COLOR_BLACK = Color.fromRGBO(48, 47, 48, 1.0);
// ignore: constant_identifier_names
const COLOR_GREY = Color.fromRGBO(141, 141, 141, 1.0);
// ignore: constant_identifier_names
const COLOR_RED = Color(0xffee4d2a);
// ignore: constant_identifier_names
const COLOR_BG_BODY = Color(0xffffffff);

// ignore: constant_identifier_names
const TextTheme TEXT_THEME_DEFAULT = TextTheme(
    headline1: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 26),
    headline2: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
    headline3: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
    headline4: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 16),
    headline5: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
    headline6: TextStyle(
        color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
    bodyText1: TextStyle(
        color: COLOR_BLACK,
        fontSize: 14,
        fontWeight: FontWeight.w500,
        height: 1.2),
    bodyText2: TextStyle(
        color: COLOR_GREY,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.3),
    subtitle1: TextStyle(
        color: COLOR_BLACK, fontSize: 12, fontWeight: FontWeight.w400),
    subtitle2: TextStyle(
        color: COLOR_GREY, fontSize: 12, fontWeight: FontWeight.w400));

// ignore: constant_identifier_names
const TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 22),
  headline2:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 20),
  headline3:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 18),
  headline4:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 14),
  headline5:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 12),
  headline6:
      TextStyle(color: COLOR_BLACK, fontWeight: FontWeight.w700, fontSize: 10),
  bodyText1: TextStyle(
      color: COLOR_BLACK,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  bodyText2: TextStyle(
      color: COLOR_GREY,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      height: 1.5),
  subtitle1:
      TextStyle(color: COLOR_BLACK, fontSize: 10, fontWeight: FontWeight.w400),
  subtitle2:
      TextStyle(color: COLOR_GREY, fontSize: 8, fontWeight: FontWeight.w300),
);
