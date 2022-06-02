
enum IconSizeExtension{SMALL,MEDIUM,HIGH,SMALLTOMEDIUM,MEDIUMTOHIGH,HUGE}


extension IconSizeValue on IconSizeExtension{

  double get sizeValue  {
    switch(this){
      case IconSizeExtension.SMALL:
        return 8;
      case IconSizeExtension.SMALLTOMEDIUM:
        return 12;
      case IconSizeExtension.MEDIUM:
        return 15;
      case IconSizeExtension.MEDIUMTOHIGH:
        return 19;
      case IconSizeExtension.HIGH:
        return 30;
      case IconSizeExtension.HUGE:
        return 128;
      default:
        throw Exception('NOT VALİD FONT SİZE');
    }
  }

}

