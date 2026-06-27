import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:burger_repository/burger_repository.dart';

class FirebaseBurgerRepo implements BurgerRepo {
  final DatabaseReference burgersRef =
      FirebaseDatabase.instance.ref().child('burgers');

  @override
  Future<List<Burger>> getBurgers() async {
    try {
      final snapshot = await burgersRef.get();

      if (!snapshot.exists || snapshot.value == null) {
        return [];
      }

      return snapshot.children.map((child) {
        final data = Map<String, dynamic>.from(child.value as Map);

        data['burgerId'] ??= child.key;

        return Burger.fromEntity(
          BurgerEntity.fromDocument(data),
        );
      }).toList();
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
