import 'package:flutter/material.dart';

import 'screens/CardGallery.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'birthday gift',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const CardGallery(title: 'To My Dear Eve'),
    );
  }
}
