import 'package:burger_repository/src/entities/burger_entity.dart';
import 'package:burger_repository/src/models/models.dart';

class Burger {
  String burgerId;
  String pic;
  String name;
  String description;
  bool isVeg;
  int spicy;
  int price;
  int discount;
  Macros macros;

  Burger({
    required this.burgerId,
    required this.pic,
    required this.name,
    required this.description,
    required this.isVeg,
    required this.spicy,
    required this.price,
    required this.discount,
    required this.macros,
  });


  BurgerEntity toEntity() {
  return BurgerEntity(
    burgerId: burgerId,
    pic: pic,
    name: name,
    description: description,
    isVeg: isVeg,
    spicy: spicy,
    price: price,
    discount: discount,
    macros: macros,
  );
}

static Burger fromEntity(BurgerEntity entity) {
  return Burger(
    burgerId: entity.burgerId,
    pic: entity.pic,
    name: entity.name,
    description: entity.description,
    isVeg: entity.isVeg,
    spicy: entity.spicy,
    price: entity.price,
    discount: entity.discount,
    macros: entity.macros,
  );
}

}
