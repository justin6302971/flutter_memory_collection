import 'package:flutter/material.dart';

class CardTitle extends StatelessWidget {
  const CardTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
      child: Align(
        alignment: Alignment.center,
        child: Text(title, style: Theme.of(context).textTheme.titleLarge),
      ),
    );
  }
}
