import 'package:flutter/material.dart';

enum Season {
  AllSeasons,
  EidFtr,
  EidAdha,
  Ramadan,
}
//enum hold multiple values in same variable can be accesed by '.'

enum Gm3yatType {
  All,
  Zakah,
  Learn,
  Aytam,
  Hospitals,
}

class Gm3yatItem {
  final String? id;
  final List<String>? categories;
  final String? title;
  final String? imageUrl;
  final List<String>? activities;
  final List<String>? program;
  final Season? season;
  final Gm3yatType? gm3yatType;
  final bool? isInEidFtr;
  final bool? isInEidAdha;
  final bool? isInRamadan;

  const Gm3yatItem({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.activities,
    @required this.program,
    @required this.season,
    @required this.gm3yatType,
    @required this.isInEidFtr,
    @required this.isInEidAdha,
    @required this.isInRamadan,
  });
}
