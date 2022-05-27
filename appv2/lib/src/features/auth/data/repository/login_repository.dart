import 'package:appv2/src/features/auth/data/dto/user_login_dto.dart';
import 'package:appv2/src/features/auth/domain/repository/login_interface.dart';
import 'package:dio/dio.dart';
import '../../domain/model/user.dart';

class LoginRepository implements ILogin {
  final Dio _dio = Dio();
  String url = 'https://aider-api.herokuapp.com';

  @override
  Future<User> login(User user) async {
    final dto = UserLoginDTO.fromDomain(user);

    final response = await _dio.post(
      '$url/login',
      data: dto.toJson(),
    );

    if (response.statusCode != 200) {
      //FIXME: Retornar erro para o front do formulário
      throw Exception("Usuário ou Senha Inválidos!");
    } else {
      final domain = User(user.email, null, token: response.data);

      return Future.value(domain);
    }
  }
}
