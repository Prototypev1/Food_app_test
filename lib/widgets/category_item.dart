import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;

  CategoryItem(this.id, this.title, this.color);

  void selectCategory(BuildContext ctx) {
    //ovo nam omogucuje da idemo po razlicitim stranicama i mora biti povezana s kontekstom
    Navigator.of(ctx).pushNamed(
      '/category-meals',
      arguments: {
        'id': id,
        'title': title,
      },
    ); //push gura stranicu stranicu preko, dok pop vraca stranicu nazad tj skida je sa stacka stranica, proveri sta daje constructor njen
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //inkwell nam omogucuje da kontejneri tj grid postane tappable i da napravi ripple efekt na pointeru
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),

      child: Container(
        //generalni stil containera, i sta ocekujemo u ovom fajlu gore string i title npr
        padding: EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(
                  0.7), //funkcije za gradijent tipa smer u kojem ide i koji opacity ima, npr pocinje od 0/7 i zavrsava se na propertiju color.
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
