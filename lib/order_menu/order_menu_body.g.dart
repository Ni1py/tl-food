// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_menu_body.dart';

// **************************************************************************
// FunctionalWidgetGenerator
// **************************************************************************

class OrderMenuBody extends StatelessWidget {
  const OrderMenuBody(
      this.salads, this.soups, this.secondCourses, this.garnishes,
      {Key? key})
      : super(key: key);

  final List<Widget> salads;

  final List<Widget> soups;

  final List<Widget> secondCourses;

  final List<Widget> garnishes;

  @override
  Widget build(BuildContext _context) =>
      _orderMenuBody(salads, soups, secondCourses, garnishes);
}

class _OrderColumn extends StatelessWidget {
  const _OrderColumn(this.children, {Key? key}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext _context) => __orderColumn(children);
}
