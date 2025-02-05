import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDark= false;

  static const Color primColor = const Color.fromRGBO(120, 196, 164, 1);

  // Define yourColor directly within the class
  static const Color yourColor = Color.fromRGBO(250, 247, 245, 1);

  // Define myColor directly within the class
  static const Color myColor = Color(0xFFEBD1B9);

  // Use the defined colors directly in the ColorScheme.fromSeed() constructor
  final ColorScheme _light = ColorScheme.fromSeed(
    onPrimary: Colors.white,
    tertiary: yourColor,
    seedColor: Colors.white,
    primary: primColor,
    onSecondary: Colors.black,
    secondary: myColor,
  onTertiary: Colors.grey.withOpacity(0.2)
  //  onPrimaryContainer: Colors.black
  );
  final ColorScheme _dark = ColorScheme.fromSeed(brightness: Brightness.dark,
    onPrimary: Colors.black,
    onPrimaryContainer: Colors.blueAccent,
    onSecondary: Colors.white,
    tertiary: Colors.grey[500],
    seedColor: Colors.white,
    primary: Colors.black,
    secondary: Colors.greenAccent[300],
    onTertiary: Colors.black.withOpacity(0.5)
  );
  late  ColorScheme _theme;
  ThemeProvider(){
    _theme=_light;
  }
  ColorScheme get theme =>_theme;

  void toggleTheme(){
    isDark=!isDark;
    _theme=isDark?_dark:_light;
    notifyListeners();
  }
}
