// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist_media_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnilistMediaType _$manga = const AnilistMediaType._('MANGA');
const AnilistMediaType _$anime = const AnilistMediaType._('ANIME');

AnilistMediaType _$valueOf(String name) {
  switch (name) {
    case 'MANGA':
      return _$manga;
    case 'ANIME':
      return _$anime;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AnilistMediaType> _$values =
    new BuiltSet<AnilistMediaType>(const <AnilistMediaType>[
  _$manga,
  _$anime,
]);

Serializer<AnilistMediaType> _$anilistMediaTypeSerializer =
    new _$AnilistMediaTypeSerializer();

class _$AnilistMediaTypeSerializer
    implements PrimitiveSerializer<AnilistMediaType> {
  @override
  final Iterable<Type> types = const <Type>[AnilistMediaType];
  @override
  final String wireName = 'AnilistMediaType';

  @override
  Object serialize(Serializers serializers, AnilistMediaType object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  AnilistMediaType deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnilistMediaType.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
