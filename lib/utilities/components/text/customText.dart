import 'package:flutter/material.dart';

import '../../constant/app/app_constant.dart';
import '../../constant/extension/font_extension.dart';


// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String text;
  Color? textColor;
  Color? backgroundColor;
  double? fontSize;
  double? letterSpacing;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  double? wordSpace;
  String? fontFamily;
  TextAlign? textAlign;
  TextStyle? customTextStyle;

  CustomText(
      {Key? key, required this.text,
      this.textColor,
      this.textAlign,
      this.letterSpacing,
      this.backgroundColor,
      this.fontFamily,
      this.fontSize,
      this.fontWeight,
      this.customTextStyle,
      this.fontStyle,
      this.wordSpace}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: customTextStyle ?? TextStyle(
        color: textColor,
        letterSpacing: letterSpacing ?? 0.10,
        fontSize: fontSize ?? FontSizeDegerler.normalFontSize.fontDeger,
        fontWeight: fontWeight ?? FontWeight.w500,
        fontFamily: fontFamily ?? ApplicationConstants.fontFamily,
        fontStyle: fontStyle,
        wordSpacing: wordSpace ?? 2,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
