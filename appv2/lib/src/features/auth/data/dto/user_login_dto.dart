

import 'package:appv2/src/features/auth/domain/model/user.dart';

class UserLoginDTO {
  const UserLoginDTO(this.email, this.password);

  final String email;
  final String? password;

  factory UserLoginDTO.fromDomain(User user) {
    return UserLoginDTO(user.email, user.password);
  }

  factory UserLoginDTO.fromJson(Map<String, dynamic> json) =>
      UserLoginDTO(json['email'], json['password']);

  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}