import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/category_meals_screen.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import './screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Markova kuhinja',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
        //ovo pointuje na widget koji ce nam biti prvi screen anase aplikacije
      ),
      home: KategorijeEkrani(),
      routes: {
        '/category-meals': (ctx) =>
            CategoryMealsScreen(), //ovo pogledaj ozbiljnije deluje korisno kao navigacija
      },
    );
  }
}
