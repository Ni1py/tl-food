import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'order_menu_body.g.dart';

@swidget
Widget _orderMenuBody(
  List<Widget> salads,
  List<Widget> soups,
  List<Widget> secondCourses,
  List<Widget> garnishes,
) {
  return Container(
    padding: const EdgeInsets.only(
      left: 10.0,
      right: 10.0,
      top: 10.0,
    ),
    color: const Color(0xff7da3c9),
    child: Row(
      children: [
        Expanded(child: _OrderColumn(salads)),
        Expanded(child: _OrderColumn(soups)),
        Expanded(child: _OrderColumn(secondCourses)),
        Expanded(child: _OrderColumn(garnishes))
      ],
    ),
  );
}

@swidget
Widget __orderColumn(List<Widget> children) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      verticalDirection: VerticalDirection.up,
      children: children,
    ),
  );
}
