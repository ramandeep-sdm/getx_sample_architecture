import 'package:getapp/domain/entities/user.dart';

abstract class AuthenticationRepository {
  Future<User> signUp(String username);
}
