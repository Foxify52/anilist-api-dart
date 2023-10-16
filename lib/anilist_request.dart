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
    var response = await client.post(
      '',
      data: {
        "query": whereQuery,
      },
    );
    var mediasJson = response.data['data']['Page'][name.toLowerCase()];
    var medias = mediasJson == null
        ? null
        : AnilistSerializable<U>().fromJsonList(mediasJson);
    var pageInfoJson = response.data['data']['Page']['pageInfo'];
    var pageInfo =
        pageInfoJson == null ? null : AnilistPageInfo.fromJson(pageInfoJson);

    return AnilistQueryResult<U>(
      (b) => b
        ..pageInfo = pageInfo?.toBuilder()
        ..results = medias?.toBuilder(),
    );
  }
}
