import 'package:flutter/material.dart';

abstract class BaseStatefull<T extends StatefulWidget> extends State<T> {
  TextTheme get textTheme => Theme.of(context).textTheme;
  ThemeData get theme => Theme.of(context);
  ColorScheme get colorSchema => Theme.of(context).colorScheme;
}
