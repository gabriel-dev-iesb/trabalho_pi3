// ignore_for_file: non_constant_identifier_names

class CreateUser {
  CreateUser(this.name, this.email, this.confirm_email, this.password, this.confirm_password);

  final String name;
  final String email;
  final String confirm_email;
  final String? password;
  final String? confirm_password;

  factory CreateUser.fromJson(Map<String, dynamic> json) =>
      CreateUser(
        json['name'],
        json['email'],
        json['confirm_email'],
        json['password'],
        json['confirm_password'],
        );
}