// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist_query_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnilistQueryResult<Object?>> _$anilistQueryResultSerializer =
    new _$AnilistQueryResultSerializer();

class _$AnilistQueryResultSerializer
    implements StructuredSerializer<AnilistQueryResult<Object?>> {
  @override
  final Iterable<Type> types = const [AnilistQueryResult, _$AnilistQueryResult];
  @override
  final String wireName = 'AnilistQueryResult';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AnilistQueryResult<Object?> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterE =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object?>[];
    Object? value;
    value = object.pageInfo;
    if (value != null) {
      result
        ..add('pageInfo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(AnilistPageInfo)));
    }
    value = object.results;
    if (value != null) {
      result
        ..add('results')
        ..add(serializers.serialize(value,
            specifiedType: new FullType(BuiltList, [parameterE])));
    }
    return result;
  }

  @override
  AnilistQueryResult<Object?> deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterE =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new AnilistQueryResultBuilder<Object?>()
        : serializers.newBuilder(specifiedType)
            as AnilistQueryResultBuilder<Object?>;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AnilistPageInfo))!
              as AnilistPageInfo);
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterE]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$AnilistQueryResult<E> extends AnilistQueryResult<E> {
  @override
  final AnilistPageInfo? pageInfo;
  @override
  final BuiltList<E>? results;

  factory _$AnilistQueryResult(
          [void Function(AnilistQueryResultBuilder<E>)? updates]) =>
      (new AnilistQueryResultBuilder<E>()..update(updates))._build();

  _$AnilistQueryResult._({this.pageInfo, this.results}) : super._() {
    if (E == dynamic) {
      throw new BuiltValueMissingGenericsError(r'AnilistQueryResult', 'E');
    }
  }

  @override
  AnilistQueryResult<E> rebuild(
          void Function(AnilistQueryResultBuilder<E>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnilistQueryResultBuilder<E> toBuilder() =>
      new AnilistQueryResultBuilder<E>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnilistQueryResult &&
        pageInfo == other.pageInfo &&
        results == other.results;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageInfo.hashCode);
    _$hash = $jc(_$hash, results.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnilistQueryResult')
          ..add('pageInfo', pageInfo)
          ..add('results', results))
        .toString();
  }
}

class AnilistQueryResultBuilder<E>
    implements Builder<AnilistQueryResult<E>, AnilistQueryResultBuilder<E>> {
  _$AnilistQueryResult<E>? _$v;

  AnilistPageInfoBuilder? _pageInfo;
  AnilistPageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new AnilistPageInfoBuilder();
  set pageInfo(AnilistPageInfoBuilder? pageInfo) => _$this._pageInfo = pageInfo;

  ListBuilder<E>? _results;
  ListBuilder<E> get results => _$this._results ??= new ListBuilder<E>();
  set results(ListBuilder<E>? results) => _$this._results = results;

  AnilistQueryResultBuilder();

  AnilistQueryResultBuilder<E> get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageInfo = $v.pageInfo?.toBuilder();
      _results = $v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnilistQueryResult<E> other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnilistQueryResult<E>;
  }

  @override
  void update(void Function(AnilistQueryResultBuilder<E>)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnilistQueryResult<E> build() => _build();

  _$AnilistQueryResult<E> _build() {
    _$AnilistQueryResult<E> _$result;
    try {
      _$result = _$v ??
          new _$AnilistQueryResult<E>._(
              pageInfo: _pageInfo?.build(), results: _results?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pageInfo';
        _pageInfo?.build();
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AnilistQueryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
