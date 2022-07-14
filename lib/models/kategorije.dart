import 'package:flutter/material.dart';

class Kategorija {
  //definisemo kako kategorija izgleda ovde
  final String id; // svaki item kategorije mora da ima id
  final String title; // svaki item kategorije mora da ima ime
  final Color color; // i svaki item u kategoriji mora da ima pozadinsku boju

  const Kategorija(
      {@required this.id,
      @required this.title,
      this.color = Colors
          .orange}); //konstruktor u koji prosledjujemo podatke iz klase tj sve properties
}
