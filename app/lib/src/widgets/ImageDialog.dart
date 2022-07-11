import 'package:flutter/material.dart';

import '../data/photo_card.dart';

class ImageDialog extends StatelessWidget {
  const ImageDialog({Key? key, required this.carddetail}) : super(key: key);

  final CardDetail carddetail;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        // height: 150,
        child: InteractiveViewer(
          panEnabled: false, // Set it to false
          minScale: 0.5,
          maxScale: 3,
          child: Image.asset(
            carddetail.assetName,
            fit: BoxFit.cover,
          ),
        ),
        // decoration: BoxDecoration(
        //     color: const Color.fromARGB(255, 0, 0, 0),
        //     image: DecorationImage(
        //         image: AssetImage(carddetail.assetName), fit: BoxFit.fitWidth)),
      ),
    );
  }
}
