
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextThemeManager {
  static TextThemeManager? _instance;
  static TextThemeManager get instance {
    return _instance ??= TextThemeManager.init();
  }

  TextThemeManager.init();

  TextTheme textTheme({bool isDark = false}) {
    return TextTheme(
      headline1: TextStyle(
        fontFamily: 'Gotham',
        fontSize: 30.sp,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),
      
   headline3: TextStyle(
        fontFamily: 'Gotham',
        fontSize: 24.sp,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      headline4: TextStyle(
        fontFamily: 'Gotham',
        fontSize: 22.sp,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.w700,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      headline5: TextStyle(
        fontFamily: 'Gotham',
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      bodyText1: TextStyle(
        fontFamily: 'Gotham',
        fontSize: 13.sp,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),

      subtitle1:  TextStyle(
        fontFamily: 'Gotham',
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
        color: Colors.white,
        decorationColor: Colors.white.withOpacity(0.01),
      ),
    );
  }
}
