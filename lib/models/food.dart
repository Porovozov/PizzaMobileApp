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
          'No1. In Sales',
          'Pizza Clasic',
          '50 min',
          4.8,
          '325 kcal',
          8,
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
              'Помидоры': 'assets/tomato.png',
            },
          ],
          'Пицца с грибами — один из самых популярных вариантов этого замечательного блюда как в самой Италии, так и во всем остальном мире. Традиционно для начинки используются шампиньоны, выращенные «в неволе». И это действительно отличный выбор, так как они готовятся очень быстро (кстати, их вообще можно есть в сыром виде!) и идеально сочетаются как с томатным соусом, так и с сыром. Сделать вкус грибов более выразительным можно с помощью пряных трав: орегано или чабреца. Да и наша родная петрушка тоже вполне подойдет! В начинку пряные травы лучше добавить в сушеном виде, а вот уже готовую пиццу с грибами можно украсить их свежими листочками.',
          hihtlight: true),
      Food(
          'assets/pizza.png',
          'No1. In Sales',
          'MAcarella',
          '50 min',
          4.8,
          '325 kcal',
          16,
          1,
          [
            {
              'Noodle': 'assets/pizza.png',
            },
            {
              'Shrimp': 'assets/pizza.png',
            },
          ],
          'Simply text loooooooooooooooooL',
          hihtlight: true),
      Food(
          'assets/pizza.png',
          'No1. In Sales',
          'umy',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/pizza.png',
            },
            {
              'Shrimp': 'assets/pizza.png',
            },
          ],
          'Simply text loooooooooooooooooL',
          hihtlight: true),
    ];
  }

  static List<Food> generatePopularFood() {
    return [
      Food(
          'assets/pizza.png',
          'No1. In Sales',
          'umy',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/pizza.png',
            },
            {
              'Shrimp': 'assets/pizza.png',
            },
          ],
          'Simply text loooooooooooooooooL',
          hihtlight: true),
      Food(
          'assets/pizza.png',
          'No1. In Sales',
          'Sobba POOP',
          '50 min',
          4.8,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'assets/pizza.png',
            },
            {
              'Shrimp': 'assets/pizza.png',
            },
          ],
          'Simply text loooooooooooooooooL',
          hihtlight: true),
    ];
  }
}
