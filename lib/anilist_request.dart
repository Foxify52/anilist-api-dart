// ignore_for_file: implementation_imports

import 'package:built_collection/src/list.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'anilist_utils.dart';
import 'models/models.dart';

abstract mixin class AnilistRequest<T> {
  int page = 1;
  int perPage = 10;

  late Dio client;

  String get name;
  String get whereQuery;

  @protected
  String queryElements(Map<String, dynamic> arguments);

  @protected
  Future<AnilistQueryResult<U>> listRequest<U>(int perPage, int page) async {
    this.page = page;
    this.perPage = perPage;
    Response<dynamic> response = await client.post(
      '',
      data: <String, String>{
        'query': whereQuery,
      },
    );
    dynamic mediasJson = response.data['data']['Page'][name.toLowerCase()];
    BuiltList<U>? medias = mediasJson == null
        ? null
        : AnilistSerializable<U>().fromJsonList(mediasJson);
    dynamic pageInfoJson = response.data['data']['Page']['pageInfo'];
    AnilistPageInfo? pageInfo =
        pageInfoJson == null ? null : AnilistPageInfo.fromJson(pageInfoJson);

    return AnilistQueryResult<U>(
      (AnilistQueryResultBuilder<U> b) => b
        ..pageInfo = pageInfo?.toBuilder()
        ..results = medias?.toBuilder(),
    );
  }
}
