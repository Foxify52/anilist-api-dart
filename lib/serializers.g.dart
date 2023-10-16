// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serializers.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AnilistCharacter.serializer)
      ..add(AnilistConnection.serializer)
      ..add(AnilistDate.serializer)
      ..add(AnilistImage.serializer)
      ..add(AnilistMedia.serializer)
      ..add(AnilistMediaFormat.serializer)
      ..add(AnilistMediaSeason.serializer)
      ..add(AnilistMediaSource.serializer)
      ..add(AnilistMediaStatus.serializer)
      ..add(AnilistMediaType.serializer)
      ..add(AnilistName.serializer)
      ..add(AnilistPageInfo.serializer)
      ..add(AnilistStaff.serializer)
      ..add(AnilistTag.serializer)
      ..add(AnilistTitle.serializer)
      ..add(AnilistTrailer.serializer)
      ..addBuilderFactory(
          const FullType(AnilistConnection, const [
            const FullType(AnilistMedia),
            const FullType(AnilistMedia)
          ]),
          () => new AnilistConnectionBuilder<AnilistMedia, AnilistMedia>())
      ..addBuilderFactory(
          const FullType(AnilistConnection, const [
            const FullType(AnilistCharacter),
            const FullType(AnilistCharacter)
          ]),
          () => new AnilistConnectionBuilder<AnilistCharacter,
              AnilistCharacter>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(String)]),
          () => new SetBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(String)]),
          () => new SetBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(AnilistTag)]),
          () => new ListBuilder<AnilistTag>())
      ..addBuilderFactory(
          const FullType(AnilistConnection, const [
            const FullType(AnilistCharacter),
            const FullType(AnilistCharacter)
          ]),
          () => new AnilistConnectionBuilder<AnilistCharacter,
              AnilistCharacter>())
      ..addBuilderFactory(
          const FullType(AnilistConnection, const [
            const FullType(AnilistStaff),
            const FullType(AnilistStaff)
          ]),
          () => new AnilistConnectionBuilder<AnilistStaff, AnilistStaff>()))
    .build();

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
