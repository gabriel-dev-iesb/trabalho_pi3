import 'package:aider/src/features/auth/data/dto/create_user_dto.dart';
import 'package:aider/src/features/auth/domain/model/create_user.dart';
import 'package:aider/src/features/auth/domain/repository/register_interface.dart';
import 'package:dio/dio.dart';

class SignupRepository implements ISignUp {
  final Dio _dio = Dio();
  String url = 'https://aider-api.herokuapp.com';

  @override
  Future<void> signup(CreateUser user) async {
    final dto = CreateUserDto.fromDomain(user);

    final response = await _dio.post(
      '$url/aiders/create',
      data: dto.toJson(),
    );

    if (response.statusCode != 201) {
      //TODO: Retornar erro para o front do formulário
      throw Exception("Usuário ou Senha Inválidos!");
    }
  }
}
