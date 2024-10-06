import 'package:cloud_firestore/cloud_firestore.dart';

class Tasks {
  final String id;
  final String categoryId;
  final String categoryName;
  final String title;
  final bool isCompleted;

  Tasks({
    required this.id,
    required this.categoryId,
    required this.categoryName,
    required this.title,
    required this.isCompleted,
  });

  factory Tasks.fromSnapshot(DocumentSnapshot snapshot) {
    return Tasks(
      id: snapshot.id,
      categoryId: snapshot['categoryId'],
      categoryName: snapshot['categoryName'],
      title: snapshot['title'],
      isCompleted: snapshot['isCompleted'] ?? false,
    );
  }
  Map toJson() {
    return {
      'categoryId': categoryId,
      'categoryName': categoryName,
      'title': title,
      'isCompleted': isCompleted,
    };
  }
}
