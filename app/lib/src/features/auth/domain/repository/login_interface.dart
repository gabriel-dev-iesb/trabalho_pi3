import 'package:aider/src/features/auth/domain/model/user.dart';

abstract class ILogin {
  Future<User> login(User user);
}