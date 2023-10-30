import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import '../serializers.dart';

part 'anilist_page_info.g.dart';

abstract class AnilistPageInfo
    implements Built<AnilistPageInfo, AnilistPageInfoBuilder> {
  static Serializer<AnilistPageInfo> get serializer =>
      _$anilistPageInfoSerializer;

  int? get total;

  int? get perPage;

  int? get currentPage;

  int? get lastPage;

  bool? get hasNextPage;

  AnilistPageInfo._();

  factory AnilistPageInfo([void Function(AnilistPageInfoBuilder) updates]) =
      _$AnilistPageInfo;

  static const FullType specifiedType =
      FullType(BuiltList, <FullType>[FullType(AnilistPageInfo)]);

  static String jsonListString(BuiltList<AnilistPageInfo> list) =>
      jsonEncode(serializers.serialize(list, specifiedType: specifiedType));

  static BuiltList<AnilistPageInfo> fromJsonList(String json) =>
      serializers.deserialize(jsonDecode(json), specifiedType: specifiedType)
          as BuiltList<AnilistPageInfo>;

  static AnilistPageInfo fromJson(Map<String, dynamic> json) =>
      serializers.deserialize(json, specifiedType: const FullType(AnilistPageInfo))
          as AnilistPageInfo;

  static String toJson(AnilistPageInfo pageInfo) =>
      serializers.serialize(pageInfo, specifiedType: const FullType(AnilistPageInfo))
          as String;
}
