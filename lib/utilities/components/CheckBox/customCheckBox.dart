import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomCheckBox extends StatelessWidget {
  Color? focusColor;
  Color? activeColor;
  bool? conditions;
  Function onPressed;


  CustomCheckBox(
  {Key? key, this.focusColor, this.activeColor, this.conditions,required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      focusColor: focusColor,
      activeColor: activeColor,
      value: conditions,
      onChanged: onPressed as void Function(bool?)?,
    );
  }
}
