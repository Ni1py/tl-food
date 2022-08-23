import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:gap/gap.dart';
import 'package:tl_food_flutter/dish_card.dart';
import 'package:tl_food_flutter/order_menu/order_menu_body.dart';
import 'package:tl_food_flutter/order_menu/order_menu_header.dart';

part 'order_menu.g.dart';

@swidget
Widget _orderMenu() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 189.6),
    child: Column(
      children: const [
        OrderMenuHeader(),
        Gap(1),
        OrderMenuBody([DishCard(), DishCard()], [DishCard()], [], []),
      ],
    ),
  );
}
