class CustomFunctions {
  static String dayName(String day) {
    String dayOfName = 'Not Found';
    switch (day) {
      case "1":
        dayOfName = 'Monday';
        break;
      case "2":
        dayOfName = 'Tuesday';
        break;
      case "3":
        dayOfName = 'Wednesday';
        break;
      case "4":
        dayOfName = 'Thursday';
        break;
      case "5":
        dayOfName = 'Friday';
        break;
      case "6":
        dayOfName = 'Saturday';
        break;
      case "7":
        dayOfName = 'Sunday';
        break;
    }
    return dayOfName;
  }
}
