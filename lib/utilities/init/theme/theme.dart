import 'package:flutter/material.dart';
final ThemeData myTheme = ThemeData(
  primarySwatch: MaterialColor(4294279847,{50: Color( 0xfffde7ee )
    , 100: Color( 0xfffbd0de )
    , 200: Color( 0xfff7a1bd )
    , 300: Color( 0xfff4719b )
    , 400: Color( 0xfff0427a )
    , 500: Color( 0xffec1359 )
    , 600: Color( 0xffbd0f47 )
    , 700: Color( 0xff8e0b35 )
    , 800: Color( 0xff5e0824 )
    , 900: Color( 0xff2f0412 )
  }),
  brightness: Brightness.light,
  primaryColor: Color( 0xfff582a7 ),
  primaryColorBrightness: Brightness.light,
  primaryColorLight: Color( 0xfffbd0de ),
  primaryColorDark: Color( 0xff8e0b35 ),
  accentColor: Color( 0xffec1359 ),
  accentColorBrightness: Brightness.dark,
  canvasColor: Color( 0xfffafafa ),
  scaffoldBackgroundColor: Color( 0xfffafafa ),
  bottomAppBarColor: Color( 0xffffffff ),
  cardColor: Color( 0xffffffff ),
  dividerColor: Color( 0x1f000000 ),
  highlightColor: Color( 0x66bcbcbc ),
  splashColor: Color( 0x66c8c8c8 ),
  selectedRowColor: Color( 0xfff5f5f5 ),
  unselectedWidgetColor: Color( 0x8a000000 ),
  disabledColor: Color( 0x61000000 ),
  buttonColor: Color( 0xffe0e0e0 ),
  toggleableActiveColor: Color( 0xffbd0f47 ),
  secondaryHeaderColor: Color( 0xfffde7ee ),
  textSelectionColor: Color( 0xfff7a1bd ),
  cursorColor: Color( 0xff4285f4 ),
  textSelectionHandleColor: Color( 0xfff4719b ),
  backgroundColor: Color( 0xfff7a1bd ),
  dialogBackgroundColor: Color( 0xffffffff ),
  indicatorColor: Color( 0xffec1359 ),
  hintColor: Color( 0x8a000000 ),
  errorColor: Color( 0xffd32f2f ),
  buttonTheme: ButtonThemeData(
    textTheme: ButtonTextTheme.normal,
    minWidth: 88,
    height: 36,
    padding: EdgeInsets.only(top:0,bottom:0,left:16, right:16),
    shape:     RoundedRectangleBorder(
      side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    )
    ,
    alignedDropdown: false ,
    buttonColor: Color( 0xffe0e0e0 ),
    disabledColor: Color( 0x61000000 ),
    highlightColor: Color( 0x29000000 ),
    splashColor: Color( 0x1f000000 ),
    focusColor: Color( 0x1f000000 ),
    hoverColor: Color( 0x0a000000 ),
    colorScheme: ColorScheme(
      primary: Color( 0xfff582a7 ),
      primaryVariant: Color( 0xff8e0b35 ),
      secondary: Color( 0xffec1359 ),
      secondaryVariant: Color( 0xff8e0b35 ),
      surface: Color( 0xffffffff ),
      background: Color( 0xfff7a1bd ),
      error: Color( 0xffd32f2f ),
      onPrimary: Color( 0xff000000 ),
      onSecondary: Color( 0xffffffff ),
      onSurface: Color( 0xff000000 ),
      onBackground: Color( 0xff000000 ),
      onError: Color( 0xffffffff ),
      brightness: Brightness.light,
    ),
  ),
  textTheme: TextTheme(

    caption: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    overline: TextStyle(
      color: Color( 0xff000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  primaryTextTheme: TextTheme(

    caption: TextStyle(
      color: Color( 0x8a000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    overline: TextStyle(
      color: Color( 0xff000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  accentTextTheme: TextTheme(

    caption: TextStyle(
      color: Color( 0xb3ffffff ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    button: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),

    overline: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  inputDecorationTheme:   InputDecorationTheme(
    labelStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    helperStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    hintStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    errorMaxLines: null,

    isDense: false,
    contentPadding: EdgeInsets.only(top:12,bottom:12,left:0, right:0),
    isCollapsed : false,
    prefixStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    suffixStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    counterStyle: TextStyle(
      color: Color( 0xdd000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    filled: false,
    fillColor: Color( 0x00000000 ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    disabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
    border: UnderlineInputBorder(
      borderSide: BorderSide(color: Color( 0xff000000 ), width: 1, style: BorderStyle.solid, ),
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
  iconTheme: IconThemeData(
    color: Color( 0xdd000000 ),
    opacity: 1,
    size: 24,
  ),
  primaryIconTheme: IconThemeData(
    color: Color( 0xff000000 ),
    opacity: 1,
    size: 24,
  ),
  accentIconTheme: IconThemeData(
    color: Color( 0xffffffff ),
    opacity: 1,
    size: 24,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: null,
    inactiveTrackColor: null,
    disabledActiveTrackColor: null,
    disabledInactiveTrackColor: null,
    activeTickMarkColor: null,
    inactiveTickMarkColor: null,
    disabledActiveTickMarkColor: null,
    disabledInactiveTickMarkColor: null,
    thumbColor: null,
    disabledThumbColor: null,

    overlayColor: null,
    valueIndicatorColor: null,

    showValueIndicator: null,
    valueIndicatorTextStyle: TextStyle(
      color: Color( 0xffffffff ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
  ),
  tabBarTheme: TabBarTheme(
    indicatorSize: TabBarIndicatorSize.tab,
    labelColor: Color( 0xdd000000 ),
    unselectedLabelColor: Color( 0xb2000000 ),
  ),
  chipTheme: ChipThemeData(
    backgroundColor: Color( 0x1f000000 ),
    brightness: Brightness.light,
    deleteIconColor: Color( 0xde000000 ),
    disabledColor: Color( 0x0c000000 ),
    labelPadding: EdgeInsets.only(top:0,bottom:0,left:8, right:8),
    labelStyle: TextStyle(
      color: Color( 0xde000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    padding: EdgeInsets.only(top:4,bottom:4,left:4, right:4),
    secondaryLabelStyle: TextStyle(
      color: Color( 0x3d000000 ),
      fontSize: null,
      fontWeight: FontWeight.w400,
      fontStyle: FontStyle.normal,
    ),
    secondarySelectedColor: Color( 0x3df582a7 ),
    selectedColor: Color( 0x3d000000 ),
    shape: StadiumBorder( side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ) ),
  ),
  dialogTheme: DialogTheme(
      shape:     RoundedRectangleBorder(
        side: BorderSide(color: Color( 0xff000000 ), width: 0, style: BorderStyle.none, ),
        borderRadius: BorderRadius.all(Radius.circular(0.0)),
      )

  ),
);
