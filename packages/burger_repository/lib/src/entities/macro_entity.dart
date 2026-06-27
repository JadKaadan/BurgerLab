class MacrosEntity {
  int calories;
  int protein;
  int fat;
  int carbs;

  MacrosEntity({
    required this.calories,
    required this.protein,
    required this.fat,
    required this.carbs,
  });

  Map<String, Object?> toDocument() {
    return {
      'calories': calories,
      'protein': protein,
      'fat': fat,
      'carbs': carbs,
    };
  }

  static MacrosEntity fromDocument(Map<String, dynamic> doc) {
    return MacrosEntity(
      calories: doc['calories'] ?? 0,
      protein: doc['protein'] ?? 0,
      fat: doc['fat'] ?? 0,
      carbs: doc['carbs'] ?? 0,
    );
  }
}