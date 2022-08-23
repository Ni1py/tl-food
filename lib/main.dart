import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:tl_food_flutter/order_menu/order_menu.dart';

part 'main.g.dart';

void main() => runApp(const _TlFoodApp());

@swidget
Widget __tlFoodApp() {
  return MaterialApp(
    title: 'TL-Food',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'Helvetica Neue'
    ),
    home: const Scaffold(
      body: OrderMenu(),
    ),
    debugShowCheckedModeBanner: false,
  );
}
