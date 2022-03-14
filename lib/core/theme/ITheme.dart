import 'package:flutter/material.dart';
import 'package:version2/core/color/colors.dart';

abstract class ITheme {
  ThemeData get data;
  final color = ColorTheme();
}
