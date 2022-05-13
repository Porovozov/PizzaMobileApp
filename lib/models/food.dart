import 'package:flutter/cupertino.dart';

class Food {
  String imgUrl;
  String desc;
  String name;
  String waittime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hihtlight;
  Food(this.imgUrl, this.desc, this.name, this.waittime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hihtlight = false});
  static List<Food> generateRecommendFood() {
    return [
      Food(
          'assets/the-pizza-g.png',
          '№1. В меню!',
          'Pizza Clasic',
          '10 min',
          4.8,
          '325 kcal',
          250,
          1,
          [
            {'Тесто': 'assets/knead.png'},
            {
              'Сыр': 'assets/cheese.png',
            },
            {
              'Грибы': 'assets/mushrooms.png',
            },
            {
              'Солями': 'assets/premium.png',
            },
            {
              'Помидоры': 'assets/tomato.png',
            },
          ],
          'Пицца с грибами — один из самых популярных вариантов этого замечательного блюда как в самой Италии, так и во всем остальном мире. Традиционно для начинки используются шампиньоны, выращенные «в неволе». И это действительно отличный выбор, так как они готовятся очень быстро (кстати, их вообще можно есть в сыром виде!) и идеально сочетаются как с томатным соусом, так и с сыром. Сделать вкус грибов более выразительным можно с помощью пряных трав: орегано или чабреца. Да и наша родная петрушка тоже вполне подойдет! В начинку пряные травы лучше добавить в сушеном виде, а вот уже готовую пиццу с грибами можно украсить их свежими листочками.',
          hihtlight: true),
      Food(
          'assets/pz2.png',
          'Остренько',
          'Пепперони',
          '10 min',
          4.8,
          '325 kcal',
          350,
          1,
          [
            {'Тесто': 'assets/knead.png'},
            {
              'Сыр': 'assets/cheese.png',
            },
            {
              'Солями': 'assets/premium.png',
            },
          ],
          'Пикантная пепперони, увеличенная порция моцареллы, томатный соус',
          hihtlight: true),
      Food(
          'assets/pz3.png',
          'Выбор гурманов',
          'Сырная',
          '50 min',
          4.8,
          '325 kcal',
          450,
          1,
          [
            {'Тесто': 'assets/knead.png'},
            {
              'Сыр': 'assets/cheese.png',
            },
          ],
          'Сыр моцарелла, сыр слугуни, сливочный соус, яйцо куриное, орегано, чесночное масло',
          hihtlight: true),
    ];
  }

  static List<Food> generatePopularFood() {
    return [
      Food(
          'assets/pz2.png',
          'Остренько',
          'Пепперони',
          '10 min',
          4.8,
          '325 kcal',
          350,
          1,
          [
            {'Тесто': 'assets/knead.png'},
            {
              'Сыр': 'assets/cheese.png',
            },
            {
              'Помидоры': 'assets/tomato.png',
            },
          ],
          'Пикантная пепперони, увеличенная порция моцареллы, томатный соус',
          hihtlight: true),
      Food(
          'assets/pz3.png',
          'Выбор гурманов',
          'Сырная',
          '50 min',
          4.8,
          '325 kcal',
          450,
          1,
          [
            {'Тесто': 'assets/knead.png'},
            {
              'Сыр': 'assets/cheese.png',
            },
          ],
          'Сыр моцарелла, сыр слугуни, сливочный соус, яйцо куриное, орегано, чесночное масло',
          hihtlight: true),
    ];
  }

  static List<Food> Pizza() {
    return [
      Food(
          'assets/wall-clock.png',
          '',
          'Здесь пока пусто',
          '',
          0,
          '',
          0,
          0,
          [
            {'Всё ещё пусто :(': 'assets/wall-clock.png'}
          ],
          'Попозже что-нибудь придумаем...',
          hihtlight: true),
    ];
  }
}
