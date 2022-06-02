import 'package:flutter/material.dart';
import 'package:worem/utilities/constant/extension/context_extension.dart';


import '../../constant/extension/EdgeExtension.dart';
import '../../constant/extension/custom_font_theme.dart';
import '../../constant/extension/elevation_extension.dart';
import '../text/customText.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  OutlinedBorder? outBorder;
  Color? primaryColor;
  Color? onPrimaryColor;
  Color? borderColor;
  Color? gradienFirstColor;
  Color? gradienSecondColor;
  double? borderWidth;
  TextStyle? textStyle;
  double? width;
  double? borderRadius;
  double? elevation;
  double? height;
  Function onPressed;
  Widget? inButtonWidget;
  List<BoxShadow>? boxShadow;

  CustomElevatedButton(
      {Key? key, required this.onPressed,
      this.height,
      this.width,
      this.outBorder,
      this.elevation,
      this.boxShadow,
      this.borderColor,
      this.borderRadius,
      this.borderWidth,
      this.primaryColor,
      this.onPrimaryColor,
      this.gradienFirstColor,
      this.gradienSecondColor,
      this.textStyle,
      this.inButtonWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: EdgeExtension.lowEdge.edgeValue),
      child: Container(
        width: width ?? MediaQueryExtension(context).width * 0.7,
        height: height ?? MediaQueryExtension(context).height * 0.07,
        child: DecoratedBox(
          decoration: BoxDecoration(

              gradient: LinearGradient(colors: [
                gradienFirstColor ?? Colors.transparent,
                gradienSecondColor ?? Colors.transparent
              ]),
              boxShadow: boxShadow),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(
                borderRadius ?? EdgeExtension.mediumtoHighEdge.edgeValue)),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: elevation ?? ElevationExtensions.none.elevateValue,
                shape: outBorder,
                primary: primaryColor,
                onPrimary: onPrimaryColor,
                textStyle: textStyle,
              ),
              onPressed: onPressed as void Function()?,
              child: inButtonWidget ??
                  CustomText(
                    text: 'Next',
                    customTextStyle: ThemeValueExtension.subtitle,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
