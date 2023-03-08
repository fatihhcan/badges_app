import 'package:badges_app/core/extensions/string_extension.dart';
import 'package:flutter/material.dart';

abstract class AppColors {
  //Unique Colors

  Color white = 'FFFFFF'.color;
  Color tundora = '4A4A4A'.color;
  Color black = '000000'.color;

  //Overrided Colors

  late Color textColor;
  late Color unitColor;
  late Color backgroundColor;
}

class LightColors extends AppColors {
  @override
  Color get textColor => tundora;

  @override
  Color get unitColor => black;

  @override
  Color get backgroundColor => white;
}
