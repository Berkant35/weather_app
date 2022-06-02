import 'package:flutter/material.dart';
import 'package:worem/utilities/constant/extension/context_extension.dart';


import '../../constant/extension/EdgeExtension.dart';
import '../../constant/extension/font_extension.dart';
import '../../init/theme/custom_colors.dart';

class LoginFormField extends StatelessWidget {
  TextEditingController controller;
  String? initialValue;
  Icon? preicon;
  InkWell? suficon;
  String? helperText;
  String? counterText;

  int? maxLengthWord;
  bool? goster;
  bool? isAvailablePaste;
  TextInputType? inputType;
  TextStyle? helperStyle;
  TextStyle? hintStyle;
  TextStyle? inputStyle;
  String? Function(String? value) validateFunction;

  LoginFormField({Key? key, required this.controller,
    this.initialValue,
    required this.validateFunction,
    this.preicon,
    this.helperText,
    this.suficon,
    this.hintStyle,
    this.helperStyle,
    this.inputStyle,
    this.counterText,
    this.isAvailablePaste,
    this.inputType,
    this.goster,
    this.maxLengthWord}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQueryExtension(context).width*0.01),
      child: TextFormField(
        obscureText: goster ?? false,
        keyboardType: inputType ?? TextInputType.text,
        controller: controller,
        enableInteractiveSelection: isAvailablePaste ?? true,
        validator: validateFunction,
        maxLength: maxLengthWord,

        style: TextStyle(
            fontFamily: "",
            fontSize: FontSizeDegerler.normalFontSize.fontDeger,
            fontWeight: FontWeight.w500,
            color: Colors.black),
        enableSuggestions: true,
        cursorColor: CustomColors.brightPink,
        decoration: InputDecoration(
          helperStyle: helperStyle,
          hintStyle: hintStyle,
          contentPadding: EdgeInsets.all(EdgeExtension.normalEdge.edgeValue),
          counterText: counterText,
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: CustomColors.brightPink)),
          prefixIcon: preicon,
          suffixIcon: suficon,
          helperText: helperText ?? '',
          fillColor: CustomColors.brightPink,
          focusColor: CustomColors.brightPink,
          hintText: initialValue ?? '',
        ),
      ),
    );
  }
}
