// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist_media_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AnilistMediaStatus _$finished = const AnilistMediaStatus._('FINISHED');
const AnilistMediaStatus _$releasing = const AnilistMediaStatus._('RELEASING');
const AnilistMediaStatus _$notyetreleased =
    const AnilistMediaStatus._('NOT_YET_RELEASED');
const AnilistMediaStatus _$cancelled = const AnilistMediaStatus._('CANCELLED');

AnilistMediaStatus _$valueOf(String name) {
  switch (name) {
    case 'FINISHED':
      return _$finished;
    case 'RELEASING':
      return _$releasing;
    case 'NOT_YET_RELEASED':
      return _$notyetreleased;
    case 'CANCELLED':
      return _$cancelled;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AnilistMediaStatus> _$values =
    new BuiltSet<AnilistMediaStatus>(const <AnilistMediaStatus>[
  _$finished,
  _$releasing,
  _$notyetreleased,
  _$cancelled,
]);

Serializer<AnilistMediaStatus> _$anilistMediaStatusSerializer =
    new _$AnilistMediaStatusSerializer();

class _$AnilistMediaStatusSerializer
    implements PrimitiveSerializer<AnilistMediaStatus> {
  @override
  final Iterable<Type> types = const <Type>[AnilistMediaStatus];
  @override
  final String wireName = 'AnilistMediaStatus';

  @override
  Object serialize(Serializers serializers, AnilistMediaStatus object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  AnilistMediaStatus deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AnilistMediaStatus.valueOf(serialized as String);
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
