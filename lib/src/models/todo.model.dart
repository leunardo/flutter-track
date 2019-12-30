import 'package:cloud_firestore/cloud_firestore.dart';

class TodoModel {
  String description;
  bool done;
  String id;

  TodoModel({ this.description, this.done, this.id });

  factory TodoModel.fromFirestore(DocumentSnapshot doc) {
    return TodoModel(
      description: doc['description'],
      done: doc['done'],
      id: doc.documentID
    );
  }

  Map<String, dynamic> toFirestone() {
    return {
      'description': this.description,
      'done': this.done
    };
  }
}