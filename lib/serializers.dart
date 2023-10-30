import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'models/models.dart';

part 'serializers.g.dart';

@SerializersFor(
  <Type>[AnilistMedia, AnilistCharacter, AnilistPageInfo, AnilistStaff],
)
final Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        // add this builder factory
        const FullType(BuiltList, <FullType>[FullType(AnilistMedia)]),
        () => ListBuilder<AnilistMedia>(),
      )
      ..addBuilderFactory(
        // add this builder factory
        const FullType(BuiltList, <FullType>[FullType(AnilistCharacter)]),
        () => ListBuilder<AnilistCharacter>(),
      )
      ..addBuilderFactory(
        // add this builder factory
        const FullType(BuiltList, <FullType>[FullType(AnilistStaff)]),
        () => ListBuilder<AnilistStaff>(),
      )
      ..addPlugin(StandardJsonPlugin()))
    .build();

T deserialize<T>(dynamic value) => serializers.deserialize(value) as T;

BuiltList<T> deserializeListOf<T>(dynamic value) => BuiltList<T>.from(
      value
          .map((dynamic value) => deserialize<T>(value))
          .toList(growable: false),
    );
