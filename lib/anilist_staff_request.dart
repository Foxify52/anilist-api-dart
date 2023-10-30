// ignore_for_file: overridden_fields

import 'package:dio/dio.dart';

import 'anilist_request.dart';
import 'models/models.dart';

class AnilistStaffRequest extends AnilistStaffSelect
    with AnilistRequest<AnilistStaff> {
  @override
  Dio client;

  AnilistStaffRequest({Dio? client})
      : client =
            client ?? Dio(BaseOptions(baseUrl: 'https://graphql.anilist.co')) {
    arguments['id'] = null;
  }
  AnilistStaffRequest.fromArguments(Map<String, dynamic> withArguments)
      : client = Dio(BaseOptions(baseUrl: 'https://graphql.anilist.co')) {
    super.arguments = withArguments;
  }

  AnilistStaffRequest copy() {
    Map<String, dynamic> newArgs = Map<String, dynamic>.from(arguments);
    return AnilistStaffRequest.fromArguments(newArgs);
  }

  Future<AnilistStaff> byId(int id) async {
    Response<dynamic> response = await client.post(
      '',
      data: <String, Object>{
        'query': query,
        'variables': <String, int>{'id': id},
      },
    );
    dynamic char = response.data['data'][name];
    return AnilistStaff.fromJson(char);
  }

  Future<AnilistQueryResult<AnilistStaff>> list(int perPage, int page) async {
    return listRequest<AnilistStaff>(perPage, page);
  }
}
