
import 'package:flutter/cupertino.dart';
import '../../init/theme/custom_colors.dart';
import '../app/app_constant.dart';

extension ThemeValueExtension on TextStyle {
  static TextStyle get headline1 =>  const TextStyle(
      fontSize: 98,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.w100,
      letterSpacing: -1.5,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get headline2 => const TextStyle(
      fontSize: 61,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.w100,
      letterSpacing: -0.5,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get headline3 => const TextStyle(
      fontSize: 49,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 0,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get headline4 => const TextStyle(
      fontSize: 35,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.25,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get headline5 => const TextStyle(
      fontSize: 25,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 0,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get headline6 => const TextStyle(
      fontSize: 20,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.15,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get subtitle => const TextStyle(
      fontSize: 16,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.15,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get subtitle2 => const TextStyle(
      fontSize: 12,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.w700,
      letterSpacing: 0.1,
      fontFamily: ApplicationConstants.fontFamily);
  static TextStyle get subtitle3 => const TextStyle(
      fontSize: 8,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      fontFamily: ApplicationConstants.fontFamily);
  static TextStyle get subtitle4 => const TextStyle(
      fontSize: 6,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.1,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get body => const TextStyle(
      fontSize: 16,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.5,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get body2 => const TextStyle(
      fontSize: 14,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.25,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get caption => const TextStyle(
      fontSize: 12,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get overline => const TextStyle(
      fontSize: 12,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.normal,
      letterSpacing: 1.5,
      fontFamily: ApplicationConstants.fontFamily);

  static TextStyle get buttonTextStyle => const TextStyle(
      fontSize: 14,
      color: CustomColors.smokyBlack,
      fontWeight: FontWeight.w100,
      letterSpacing: 0.15,
      fontFamily: ApplicationConstants.fontFamily);
}