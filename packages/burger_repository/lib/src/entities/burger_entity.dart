import 'package:burger_repository/src/entities/macro_entity.dart';
import 'package:burger_repository/src/models/models.dart';

class BurgerEntity {
  String burgerId;
  String pic;
  String name;
  String description;
  bool isVeg;
  int spicy;
  int price;
  int discount;
  Macros macros;

  BurgerEntity({
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

  Map<String, Object?> toDocument() {
    return {
      'burgerId': burgerId,
      'pic': pic,
      'name': name,
      'description': description,
      'isVeg': isVeg,
      'spicy': spicy,
      'price': price,
      'discount': discount,
      'macros':macros.toEntity().toDocument(),
    };
  }

  static BurgerEntity fromDocument(Map<String, dynamic> doc) {
    return BurgerEntity(
      burgerId: doc['burgerId'] ?? '',
      pic: doc['pic'] ?? '',
      name: doc['name'] ?? '',
      description: doc['description'] ?? '',
      isVeg: doc['isVeg'] ?? false,
      spicy: doc['spicy'] ?? 0,
      price: (doc['price'] ?? 0).toDouble(),
      discount: (doc['discount'] ?? 0).toDouble(),
      macros: doc['macros'] ?? [].map((e)=> Macros.fromEntity(MacrosEntity.fromDocument(e))),
    );
  }
}
