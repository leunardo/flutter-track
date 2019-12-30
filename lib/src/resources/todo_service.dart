import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:track/src/models/todo.model.dart';

class TodoService {
  final Firestore db = Firestore.instance;

  CollectionReference get _collection => db.collection('flutter');

  Stream<List<TodoModel>> streamTodo() {
    return _collection
             .snapshots()
             .map((snap) =>snap.documents.map((doc) => TodoModel.fromFirestore(doc)).toList())
  }

  Future<void> updateTodo(TodoModel todo) {
    return _collection
      .document(todo.id)
      .updateData({
        'done': todo.done,
        'description': todo.description
      });
  }

  Future<void> deleteTodo(TodoModel todo) {
    return _collection
      .document(todo.id)
      .delete();
  }

  Future<DocumentReference> saveTodo(TodoModel todo) {
    return _collection.add(todo.toFirestone());
  }
}