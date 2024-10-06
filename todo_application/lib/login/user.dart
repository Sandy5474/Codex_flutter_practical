import 'package:cloud_firestore/cloud_firestore.dart';

class Username {
  final String id;
  final String name;

  Username({
    required this.id,
    required this.name,
  });

  // factory counstructor takes firestore document and return category class object
  factory Username.fromSnapshot(DocumentSnapshot snapshot) {
    return Username(
      id: snapshot.id,
      name: snapshot['username'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': name,
    };
  }
}
