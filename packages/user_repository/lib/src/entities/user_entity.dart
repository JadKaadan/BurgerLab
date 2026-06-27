class MyUserEntity {
  String userId;
  String email;
  String name;
  bool hasactivecart;

  MyUserEntity({
    required this.userId,
    required this.email,
    required this.hasactivecart,
    required this.name,
  });

  Map<String, Object?> toDocument() {
    return {
      'userId': userId,
      'email': email,
      'name': name,
      'hasactivecart': hasactivecart,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc) {
    return MyUserEntity(
      userId: doc['userId'] ?? '',
      email: doc['email'] ?? '',
      name: doc['name'] ?? '',
      hasactivecart: doc['hasactivecart'] ?? false,
    );
  }
}
