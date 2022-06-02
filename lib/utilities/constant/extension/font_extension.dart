import 'package:sizer/sizer.dart';
enum FontSizeDegerler{tiny,lowFontSize,lowToNormalFontSize,normalFontSize,mediumFontSize,highFontSize,hugeFontSize,mediumtoHighFontSize,normalToMediumFontSize}



extension FontSizeExtension on FontSizeDegerler{

  double get fontDeger {
    switch(this){
      case FontSizeDegerler.tiny:
        return 10.sp;
      case FontSizeDegerler.lowFontSize:
        return 12.sp;
      case FontSizeDegerler.lowToNormalFontSize:
        return 16.sp;
      case FontSizeDegerler.normalFontSize:
        return 18.sp;
      case FontSizeDegerler.normalToMediumFontSize:
        return 20.sp;
      case FontSizeDegerler.mediumFontSize:
        return 22.sp;
      case FontSizeDegerler.mediumtoHighFontSize:
        return 28.sp;
        case FontSizeDegerler.highFontSize:
        return 38.sp;
      case FontSizeDegerler.hugeFontSize:
        return 64.sp;
      default:
        throw Exception('NOT VALİD FONT SİZE');
    }
  }
}