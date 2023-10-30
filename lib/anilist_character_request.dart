// ignore_for_file: overridden_fields

import 'package:dio/dio.dart';

import 'anilist_request.dart';
import 'models/models.dart';

class AnilistCharacterRequest extends AnilistCharacterSelect
    with AnilistRequest<AnilistCharacter> {
  @override
  Dio client;

  AnilistCharacterRequest({Dio? client})
      : client =
            client ?? Dio(BaseOptions(baseUrl: 'https://graphql.anilist.co')) {
    arguments['id'] = null;
  }
  AnilistCharacterRequest.fromArguments(Map<String, dynamic> withArguments)
      : client = Dio(BaseOptions(baseUrl: 'https://graphql.anilist.co')) {
    super.arguments = withArguments;
  }

  AnilistCharacterRequest copy() {
    Map<String, dynamic> newArgs = Map<String, dynamic>.from(arguments);
    return AnilistCharacterRequest.fromArguments(newArgs);
  }

  Future<AnilistCharacter> byId(int id) async {
    Response<dynamic> response = await client.post(
      '',
      data: <String, Object>{
        'query': query,
        'variables': <String, int>{'id': id},
      },
    );
    dynamic char = response.data['data']['Character'];
    return AnilistCharacter.fromJson(char);
  }

  Future<AnilistQueryResult<AnilistCharacter>> list(
    int perPage,
    int page,
  ) async {
    return listRequest<AnilistCharacter>(perPage, page);
  }
}
