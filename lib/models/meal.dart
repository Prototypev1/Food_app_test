import 'package:flutter/foundation.dart';

enum Complexity { Simple, Challenging, Hard }

enum Affordability { Affordable, Pricey, Luxurious }

//kako izgleda model za meal, i sta sve mora da ima, npr unique id etc.
class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl; //slika
  final List<String> ingredients; //sastojci
  final List<String> steps; //koraci da se napravi
  final int duration; //koliko dugo da se napravi
  final Complexity complexity; //koliko je tesko da se napravi
  final Affordability affordability; //koliko kosta
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
}
