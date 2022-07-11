import 'package:flutter/material.dart';

import '../data/photo_card.dart';
import 'ImageDialog.dart';

class CardContent extends StatelessWidget {
  const CardContent({Key? key, required this.carddetail}) : super(key: key);

  final CardDetail carddetail;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final titleStyle = carddetail.assetType == AssetType.dark
        ? theme.textTheme.headline5!.copyWith(color: Colors.white)
        : theme.textTheme.headline5!.copyWith(color: Colors.black);

    final descriptionStyle = theme.textTheme.subtitle1!;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (carddetail.cardType == CardType.standard)
          SizedBox(
            height: 180,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Ink.image(
                    image: AssetImage(
                      carddetail.assetName,
                    ),
                    fit: BoxFit.cover,
                    child: GestureDetector(
                      onTap: () async {
                        await showDialog(
                            context: context,
                            builder: (_) =>
                                ImageDialog(carddetail: carddetail));
                      },
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  right: 16,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      carddetail.title,
                      style: titleStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: DefaultTextStyle(
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: descriptionStyle,
            child: Column(
              crossAxisAlignment: carddetail.cardType == CardType.standard
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                Text(carddetail.section_title),
                Text(carddetail.section_note),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8, top: 8),
                  child: Text(
                    softWrap: true,
                    overflow: TextOverflow.clip,
                    carddetail.description,
                    style: descriptionStyle.copyWith(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ),
        // if (carddetail.cardType == CardType.standard)
        //   // share, explore buttons
        //   Padding(
        //     padding: const EdgeInsets.all(8),
        //     child: OverflowBar(
        //       alignment: MainAxisAlignment.start,
        //       spacing: 8,
        //       children: [
        //         TextButton(
        //           onPressed: () {},
        //           child: Text(carddetail.title),
        //         ),
        //         TextButton(
        //           onPressed: () {},
        //           child: Text(carddetail.title),
        //         ),
        //       ],
        //     ),
        //   ),
      ],
    );
  }
}
