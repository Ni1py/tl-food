import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:tl_food_flutter/styles/order_menu_header_text.dart';

part 'order_menu_header.g.dart';

@swidget
Widget _orderMenuHeader() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    color: const Color(0xff7da3c9),
    child: Row(
      children: const [
        Expanded(child: _HeaderElement('Салат', 'assets/images/salat.png')),
        Expanded(child: _HeaderElement('Суп', 'assets/images/soup.png')),
        Expanded(
            child: _HeaderElement(
                'Второе блюдо', 'assets/images/second_course.png')),
        Expanded(child: _HeaderElement('Гарнир', 'assets/images/garnish.png')),
      ],
    ),
  );
}

@swidget
Widget __headerElement(String text, String path) {
  return Padding(
    padding: const EdgeInsets.only(
      left: 15.0,
      right: 5.0,
      top: 5.0,
      bottom: 5.0,
    ),
    child: Row(
      children: [
        Image.asset(path),
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Text(text, style: orderMenuHeaderText()),
        ),
      ],
    ),
  );
}
