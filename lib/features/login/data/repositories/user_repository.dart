import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dog_with_login/core/model/my_user.dart';
import 'package:dog_with_login/features/login/data/repositories/base_user_repository.dart';
import 'package:firebase_core/firebase_core.dart';

class UserRepository extends BaseUserRepository {
  final FirebaseFirestore _firebaseFirestore;

  UserRepository({
    FirebaseFirestore? firebaseFirestore,
  }) : _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;

  @override
  Future<void> createUser(MyUser user) async {
    await _firebaseFirestore
        .collection('users')
        .doc(user.id)
        .set(user.toDocument());
  }

  @override
  Stream<MyUser> getUser(String userId) {
    print("Getting user from Colud Firestore");
    return _firebaseFirestore
        .collection('users')
        .doc(userId)
        .snapshots()
        .map((snap) => MyUser.fromSnapshot(snap));
  }

  @override
  Future<void> updateUser(MyUser user) {
    return _firebaseFirestore
        .collection('users')
        .doc(user.id)
        .update(user.toDocument())
        .then((value) => print("User updated"));
  }
}
