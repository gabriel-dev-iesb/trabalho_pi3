
// ignore_for_file: non_constant_identifier_names

import 'package:aider/src/features/auth/domain/model/create_user.dart';

class CreateUserDto {
  const CreateUserDto(this.name, this.email, this.confirm_email, this.password, this.confirm_password);

  final String name;
  final String email;
  final String confirm_email;
  final String? password;
  final String? confirm_password;

  factory CreateUserDto.fromDomain(CreateUser user) {
    return CreateUserDto(user.name, user.email, user.confirm_email, user.password, user.confirm_password);
  }

  factory CreateUserDto.fromJson(Map<String, dynamic> json) =>
      CreateUserDto(
        json['name'],
        json['email'],
        json['confirm_email'],
        json['password'],
        json['confirm_password'],
        );

  Map<String, dynamic> toJson() => {
    'name': name, 
    'email': email,
    'confirm_email': confirm_email, 
    'password': password, 
    'confirm_password': confirm_password};
}