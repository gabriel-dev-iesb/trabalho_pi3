import 'package:aider/src/features/auth/domain/model/create_user.dart';

abstract class ISignUp {
  Future<void> signup(CreateUser user);
}
