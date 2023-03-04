import 'package:dog_with_login/core/model/my_user.dart';

abstract class BaseUserRepository {
  Stream<MyUser> getUser(String userId);
  Future<void> createUser(MyUser user);
  Future<void> updateUser(MyUser user);
}
