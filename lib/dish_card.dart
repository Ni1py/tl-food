import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import 'package:gap/gap.dart';
import 'package:tl_food_flutter/icons/app_icons.dart';
import 'package:tl_food_flutter/styles/default_text_style.dart';

part 'dish_card.g.dart';

@hwidget
Widget _dishCard() {
  // final likes = useState(0);
  // final dislikes = useState(0);

  return Container(
    margin: const EdgeInsets.only(bottom: 10.0),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          padding: const EdgeInsets.only(
            left: 10.0,
            right: 10.0,
            top: 16.0,
            bottom: 14.0,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
              side: const BorderSide(
                width: 1.0,
                color: Color(0xffc4c4c4),
              )),
        ).merge(ButtonStyle(
          elevation: MaterialStateProperty.resolveWith<double>(
              (Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) return 7;
            return 0;
          }),
        )),
        onPressed: () {},
        child: const _DishCardContent()),
  );
}

@swidget
Widget __dishCardContent() {
  return Column(
    children: [
      Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Борщ',
            style: defaultTextStyle(null),
          )),
      const Gap(30.0),
      const _LikeAndDislikeRow(),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: Divider(height: 1.0, color: Color(0xffc4c4c4)),
      ),
      const _DishCardContentEnd()
    ],
  );
}

@swidget
Widget __dishCardContentEnd() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text(
        'Моторин',
        style: TextStyle(color: Color(0xff2158b3), fontSize: 12.0),
      ),
      Text('100.00 ₽', style: defaultTextStyle(FontWeight.bold))
    ],
  );
}

@swidget
Widget __likeRow(Icon icon, Color colorText, String text) {
  return Row(
    children: [
      icon,
      const Gap(2),
      Text(
        text,
        style: TextStyle(color: colorText, fontSize: 13.0),
      ),
    ],
  );
}

@hwidget
Widget __likeAndDislikeRow() {
  // final isLike = useState(false);
  // final isDislike = useState(false);
  // final likes = useState(0);
  // final dislikes = useState(0);

  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          elevation: 0.0,
          padding: const EdgeInsets.all(0.0),
          minimumSize: const Size(30, 30),
        ),
        onPressed: () {},
        //onHover: (state) {isLike.value = state;},
        child: _LikeRow(_iconLike(), Colors.green, '1'),
      ),
      const Gap(10.0),
      _LikeRow(_iconDislike(), Colors.red, '1'),
    ],
  );
}

Icon _iconLike() {
  return const Icon(
    AppIcon.thumbs_up,
    color: Colors.green,
    size: 14.0,
  );
}

Icon _iconDislike() {
  return const Icon(
    AppIcon.thumbs_down,
    color: Colors.red,
    size: 14.0,
  );
}
