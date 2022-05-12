import 'package:pizzamodels/models/food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String labe;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.labe,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );
  static Restaurant generateRestaurrant() {
    return Restaurant(
      'Restaurant:',
      '20-30 min',
      '2.4km',
      'Resto',
      'assets/logo.png',
      'Orange sandwitch - original \nsandwitch',
      4.7,
      {
        'Recommend': Food.generateRecommendFood(),
        'Popular': Food.generatePopularFood(),
        'Pizza': [],
      },
    );
  }
}
