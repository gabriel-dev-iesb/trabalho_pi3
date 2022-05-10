import 'package:aider/src/features/auth/data/dto/user_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../domain/model/user.dart';
import '../../domain/repository/login_interface.dart';

class LoginRepository implements ILogin {
  @override
  Future<User> login(User user) async {
    //FIXME: Ajustar endpoint quando arrumar a API
    final dto = UserDto.fromDomain(user);
    final response = await Dio().get(
      'https://aider-api.herokuapp.com/aiders',
      // data: dto.toJson(),
    );
    if (response.statusCode == 200) {
      final token = response.headers.value('Authorization');
      final domain = User(user.email, null, token: token);
      Modular.to.pushNamed('/home/');
      return Future.value(domain);
    } else {
      throw Exception("Usuário ou Senha Inválidos!");
    }
  }
}
