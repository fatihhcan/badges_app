
import 'package:flutter/material.dart';


class TextThemeManager {
  static TextThemeManager? _instance;
  static TextThemeManager get instance {
    return _instance ??= TextThemeManager.init();
  }

  TextThemeManager.init();

  TextTheme textTheme({bool isDark = false}) {
    return TextTheme(
      headline1: TextStyle(
        fontFamily: 'Gotham-Black',
        fontSize: 30,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),
      
   headline3: TextStyle(
        fontFamily: 'Gotham-Bold',
        fontSize: 24,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      headline4: TextStyle(
        fontFamily: 'Gotham-Bold',
        fontSize: 22,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      headline5: TextStyle(
        fontFamily: 'Gotham-Book',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      bodyText1: TextStyle(
        fontFamily: 'Gotham-Book',
        fontSize: 13,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      subtitle1:  TextStyle(
        fontFamily: 'Gotham-Medium',
        fontSize: 10,
        decoration: TextDecoration.underline,
        color: Colors.black.withOpacity(0.3),
        decorationColor: Colors.white.withOpacity(0.01),
        
      ),
    );
  }
}
