import 'package:aider/src/features/auth/data/dto/user_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/model/user.dart';
import '../../domain/repository/login_interface.dart';

class LoginRepository implements ILogin {
  final Dio _dio = Dio();
  String url = 'https://aider-api.herokuapp.com';

  @override
  Future<User> login(User user) async {
    final dto = UserDto.fromDomain(user);

    final response = await _dio.post(
      '$url/login',
      data: dto.toJson(),
    );

    if (response.statusCode != 200) {
      //TODO: Retornar erro para o front do formulário
      throw Exception("Usuário ou Senha Inválidos!");
    } else {
      final _token = response.headers.value('Authorization');
      final domain = User(user.email, null, token: _token);

      return Future.value(domain);
    }
  }
}
