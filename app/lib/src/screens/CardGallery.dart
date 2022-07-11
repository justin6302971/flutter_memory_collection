import 'package:flutter/material.dart';
import '../data/photo_card.dart';
import '../widgets/StandardCardItem.dart';
import '../widgets/TextCardItem.dart';

class CardGallery extends StatefulWidget {
  const CardGallery({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CardGallery> createState() => CardGalleryState();
}

class CardGalleryState extends State<CardGallery> with RestorationMixin {
  final RestorableBool _isSelected = RestorableBool(false);

  @override
  String get restorationId => 'cards_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_isSelected, 'is_selected');
  }

  @override
  void dispose() {
    _isSelected.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
      ),
      body: Scrollbar(
        child: ListView(
          restorationId: 'cards_demo_list_view',
          padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
          children: [
            for (final carddetail in cardlist(context))
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                child: (carddetail.cardType == CardType.text)
                    ? TextCardItem(carddetail: carddetail)
                    : StandardCardItem(carddetail: carddetail),
              ),
          ],
        ),
      ),
    );
  }
}
