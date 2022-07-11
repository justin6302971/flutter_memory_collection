import 'package:flutter/material.dart';

class CardDetail {
  CardDetail({
    required this.title,
    required this.description,
    required this.section_title,
    required this.section_note,
    required this.date,
    required this.assetName,
    this.assetType = AssetType.dark,
    this.cardType = CardType.standard,
  });

  final String title;
  final String description;
  final String section_title;
  final String section_note;
  final DateTime date;
  final String assetName;
  final AssetType assetType;
  final CardType cardType;
}

enum CardType { standard, text }

enum AssetType { dark, light }

//hardcoded data

List<CardDetail> cardlist(BuildContext context) {
  return [
    CardDetail(
        title: "測試圖片",
        section_title: "台北, 台灣",
        section_note: "測試",
        date: DateTime(2021, 8, 15),
        description: "測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，",
        assetName: 'assets/images/programming.jpeg',
        assetType: AssetType.light),
    CardDetail(
      title: "測試圖片2",
      section_title: "台中, 台灣",
      section_note: "測試",
      date: DateTime(2021, 8, 29),
      description: "測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，",
      assetName: 'assets/images/programming_1.jpeg',
    ),
    CardDetail(
        title: "",
        section_title: "無圖卡片",
        section_note: "測試註記",
        date: DateTime(2022, 7, 6),
        description: "測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述，測試敘述",
        assetName: '',
        cardType: CardType.text),
  ];
}
