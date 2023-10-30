import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';
import 'models.dart';

part 'anilist_query_result.g.dart';

abstract class AnilistQueryResult<E>
    implements Built<AnilistQueryResult<E>, AnilistQueryResultBuilder<E>> {
  static Serializer<AnilistQueryResult<Object?>> get serializer =>
      _$anilistQueryResultSerializer;
  AnilistPageInfo? get pageInfo;
  BuiltList<E>? get results;

  AnilistQueryResult._();
  factory AnilistQueryResult([
    void Function(AnilistQueryResultBuilder<E>)? updates,
  ]) = _$AnilistQueryResult<E>;

  static const FullType specifiedType =
      FullType(BuiltList, <FullType>[FullType(AnilistQueryResult)]);
  static String jsonListString(BuiltList<AnilistQueryResult<dynamic>> list) =>
      jsonEncode(
        serializers.serialize(
          list,
          specifiedType: const FullType(AnilistQueryResult),
        ),
      );

  static BuiltList<AnilistQueryResult<dynamic>> fromJsonList(String json) =>
      serializers.deserialize(
        jsonDecode(json),
        specifiedType: const FullType(AnilistQueryResult),
      ) as BuiltList<AnilistQueryResult<dynamic>>;
}
