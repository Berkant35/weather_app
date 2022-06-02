import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CustomSvg extends StatelessWidget {
  String imagepath;
  BoxFit? customBoxFit;
  double height;
  double width;
  CustomSvg({required this.height,required this.width,required this.imagepath,this.customBoxFit});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      imagepath,
      fit: customBoxFit == null ? BoxFit.fill : customBoxFit!,
      height: height,
      width: height,
      cacheColorFilter: true,
      semanticsLabel: 'Acme Logo',
    );
  }
}