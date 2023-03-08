import 'package:flutter/material.dart';

extension PNGImagePathExtension on String {
  String get toPNG => 'assets/images/$this.png';
}

extension StringColorExtension on String {
  Color get color => Color(int.parse('0xff$this'));
}
