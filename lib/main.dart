import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';
import 'package:flutter_complete_guide/screens/category_meals_screen.dart';
import 'package:flutter_complete_guide/screens/categories_screen.dart';
import 'package:flutter_complete_guide/screens/tabs_screen.dart';
import './screens/meal_detail_screen.dart';
import 'models/meal.dart';

void main() => runApp(MyApp());

List<Meal> meals = [
  DUMMY_MEALS[0],
];
List<Meal> availablemeals = [];
void toggleFavorite() {}

void isFavorite() {}

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
      initialRoute: '/',
      routes: {
        '/category-meals': (ctx) => TabsScreen(meals),
        CategoryMealsScreen.routeName: (ctx) =>
            CategoryMealsScreen(availablemeals),
        MealDetailScreen.routeName: (ctx) =>
            MealDetailScreen(toggleFavorite, isFavorite),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen(),
        );
      },
    );
  }
}
