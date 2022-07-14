import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class KategorijeEkrani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Markova kuhinja'), //const znaci da nam widget nikada nece biti razlicit od onoga kakav je bio inicijalno
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map(
              (catData) =>
                  CategoryItem(catData.id, catData.title, catData.color),
            )
            .toList(), //mapa nam daje iterablu a ne listu tkd moramo da je pretvorimo u listu, i povezujemo s drugim fajlom
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20, //koliko ima praznog prostora izmedju grid itema
        ),
      ),
    );
  }
}
