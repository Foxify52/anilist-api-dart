// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist_media_season.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnilistMediaSeason _$winter = const AnilistMediaSeason._('WINTER');
const AnilistMediaSeason _$summer = const AnilistMediaSeason._('SUMMER');
const AnilistMediaSeason _$spring = const AnilistMediaSeason._('SPRING');
const AnilistMediaSeason _$fall = const AnilistMediaSeason._('FALL');

AnilistMediaSeason _$valueOf(String name) {
  switch (name) {
    case 'WINTER':
      return _$winter;
    case 'SUMMER':
      return _$summer;
    case 'SPRING':
      return _$spring;
    case 'FALL':
      return _$fall;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AnilistMediaSeason> _$values =
    new BuiltSet<AnilistMediaSeason>(const <AnilistMediaSeason>[
  _$winter,
  _$summer,
  _$spring,
  _$fall,
]);

Serializer<AnilistMediaSeason> _$anilistMediaSeasonSerializer =
    new _$AnilistMediaSeasonSerializer();

class _$AnilistMediaSeasonSerializer
    implements PrimitiveSerializer<AnilistMediaSeason> {
  @override
  final Iterable<Type> types = const <Type>[AnilistMediaSeason];
  @override
  final String wireName = 'AnilistMediaSeason';

  @override
  Object serialize(Serializers serializers, AnilistMediaSeason object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  AnilistMediaSeason deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnilistMediaSeason.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
