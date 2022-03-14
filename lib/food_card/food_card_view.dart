import 'package:flutter/material.dart';

import '../core/widget/wrap/icon_wrap.dart';
import 'food_card_view_model.dart';

class FoodCardView extends FoodCardViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 4, child: Container(color: Colors.red)),
            Expanded(child: Container(color: Colors.black)),
            Expanded(
                flex: 2,
                child: Container(
                  color: colorSchema.secondary,
                )),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 64),
                  child: buildElevatedButtonCheckout(context)),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      centerTitle: true,
      title: Text(
        'Cart',
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
    );
  }
}

ElevatedButton buildElevatedButtonCheckout(BuildContext context) {
  return ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Theme.of(context).colorScheme.onPrimary),
        shape: MaterialStateProperty.all(StadiumBorder())),
    child: Center(
      child: buildWrapIconText(),
    ),
  );
}

Widget buildWrapIconText() {
  return IconTextWidget(
      icon: Icons.arrow_right_alt_outlined, title: "Check Out");
}
