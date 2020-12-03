import 'package:destinymenes/app/shared/config/dioHttp.dart';
import 'package:destinymenes/app/shared/models/character_model.dart';
import 'package:destinymenes/app/shared/models/profile_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/native_imp.dart';

part 'home_repository.g.dart';

@Injectable()
class HomeRepository extends Disposable {
  final DioHttp client;

  HomeRepository(this.client);

  Future<ProfileModel> fetchProfile() async {
    final response = await client.get(
        '/Platform/Destiny2/3/Profile/4611686018468100774',
        queryParameters: {'components': '100'});
    if (response.statusCode == 200) {
      return ProfileModel.fromJson(
          response.data['Response']['profile']['data']);
    } else {
      return ProfileModel();
    }
  }

  Future<CharacterModel> fetchCharacter(String character) async {
    final response = await client.get(
        '/Platform/Destiny2/3/Profile/4611686018468100774/Character/$character/',
        queryParameters: {'components': '200'});
    if (response.statusCode == 200) {
      return CharacterModel.fromJson(
          response.data['Response']['character']['data']);
    } else {
      return CharacterModel();
    }
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
