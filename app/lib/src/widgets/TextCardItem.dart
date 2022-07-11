import 'package:flutter/material.dart';
import '../data/photo_card.dart';
import 'CardContent.dart';
import 'CardTitle.dart';
import 'package:intl/intl.dart';

class TextCardItem extends StatelessWidget {
  const TextCardItem({Key? key, required this.carddetail, this.shape})
      : super(key: key);

  // static const height = 450.0;
  final CardDetail carddetail;
  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            CardTitle(title: DateFormat("yyyy-MM-dd").format(carddetail.date)),
            SizedBox(
              // height: height,
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: shape,
                child: CardContent(carddetail: carddetail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
