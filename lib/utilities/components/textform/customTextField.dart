import 'package:flutter/material.dart';


// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String? initialValue;
  final TextEditingController? controller;
  final EdgeInsets? paddingVer;
  final EdgeInsets? contentPadding;
  final TextStyle? labelTextStyle;
  final TextStyle? counterStyle;
  final Color? textColor;
  final Function? onSaved;
  final Function? onChanged;
  final Function? onTap;
  final FontWeight? counterFontWeight;
  final FontWeight? labelFontWeight;
  final Function? textValidator;
  final TextInputType? inputType;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final Icon? classicIcon;
  final String? baslik;
  final String? hintText;
  final String? hintFontFamily;
  final String? textFontFamily;
  final double? labelFontSize;
  final double? letterSpacing;
  final InputBorder? inBorder;
  final double? arkaPlanYukseklik;
  final double? arkaPlanGenislik;
  final String? labelFontFamily;
  final Color? labelColor;
  final Color? hintTextColor;
  final BoxBorder? boxBorder;
  final double? baslikHarfBosluk;
  final double? borderRadius;
  final int? maxWordCount;
  final double? textFontSize;
  final double? cursorHight;
  final double? hinFontSize;
  final double? counterFontSize;
  final double? hintWordSpace;
  final Widget? counterWidget;
  final FontWeight? fontWeight;
  final FontWeight? textFontWeight;
  final FontWeight? hintFontWeight;
  final bool? autoFocus;
  final Color? cursorColor;
  final Color? containerColor;

  TextAlign? textAlign;
  bool? justRead;

  CustomTextField(
      {
        this.initialValue,
        required this.controller,
        required this.paddingVer,
        this.textColor,
        this.labelTextStyle,
        this.counterStyle,
        this.autoFocus,
        this.counterFontSize,
        this.onSaved,
        this.maxWordCount,
        this.counterWidget,
        this.suffixIcon,
        this.labelFontWeight,
        this.inBorder,
        this.classicIcon,
        this.letterSpacing,
        this.onChanged,
        this.boxBorder,
        this.borderRadius,
        this.arkaPlanYukseklik,
        this.labelFontFamily,
        this.cursorHight,
        this.counterFontWeight,
        this.arkaPlanGenislik,
        this.textValidator,
        this.onTap,
        this.inputType,
        this.prefixIcon,
        this.baslik,
        this.contentPadding,
        this.containerColor,
        this.hintText,
        this.hintFontFamily,
        this.textFontFamily,
        this.labelFontSize,
        this.labelColor,
        this.hintTextColor,
        this.baslikHarfBosluk,
        this.textFontSize,
        this.hinFontSize,
        this.hintWordSpace,
        this.fontWeight,
        this.textFontWeight,
        this.hintFontWeight,
        this.cursorColor,
        this.textAlign,
        this.justRead
      }
      );

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: paddingVer!,
      child: Container(
        height: arkaPlanYukseklik,
        width: arkaPlanGenislik,
        decoration: BoxDecoration(
            color: containerColor,
            border: boxBorder,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 0))
        ),
        child: Padding(
          padding:  EdgeInsets.all(8.0),
          child: TextFormField(
            maxLength: maxWordCount,
            onTap: onTap as void Function()?,
            autofocus: autoFocus ?? false,
            readOnly: justRead ?? false,
            textAlign: textAlign  ?? TextAlign.start,
            cursorHeight: cursorHight,
            validator: textValidator as String? Function(String?)?,
            cursorColor: cursorColor,
            controller: controller,
            initialValue: initialValue,
            keyboardType: inputType,
            style: TextStyle(
              letterSpacing: letterSpacing,
              fontFamily: textFontFamily,
              fontSize: textFontSize,
              fontWeight: textFontWeight,
              color: textColor,
            ),
            decoration: InputDecoration(
              border: inBorder,
              contentPadding: contentPadding,
              counter: counterWidget,
              counterStyle: counterStyle,
              suffixIcon: suffixIcon,
              icon: classicIcon,
              hintText: hintText,
              hintStyle: TextStyle(
                letterSpacing: hintWordSpace,
                fontWeight: hintFontWeight,
                fontSize: hinFontSize,
                fontFamily: hintFontFamily,
                color: hintTextColor,
              ),
              labelStyle: labelTextStyle,
              labelText: baslik,
              prefixIcon: prefixIcon,
            ),
            onSaved: onSaved as void Function(String?)?,
            onChanged: onChanged as void Function(String)?,
          ),
        ),
      ),
    );
  }
}
