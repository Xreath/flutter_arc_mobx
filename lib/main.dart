import 'package:flutter/material.dart';

import 'core/theme/light_theme.dart';
import 'food_card/food_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: LightTheme.instance.data,
      home: FoodCard(),
    );
  }
}
