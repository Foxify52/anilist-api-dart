// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anilist_date.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AnilistDate> _$anilistDateSerializer = new _$AnilistDateSerializer();

class _$AnilistDateSerializer implements StructuredSerializer<AnilistDate> {
  @override
  final Iterable<Type> types = const [AnilistDate, _$AnilistDate];
  @override
  final String wireName = 'AnilistDate';

  @override
  Iterable<Object?> serialize(Serializers serializers, AnilistDate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.year;
    if (value != null) {
      result
        ..add('year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.day;
    if (value != null) {
      result
        ..add('day')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  AnilistDate deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnilistDateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'day':
          result.day = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
      }
    }

    return result.build();
  }
}

class _$AnilistDate extends AnilistDate {
  @override
  final int? year;
  @override
  final int? month;
  @override
  final int? day;

  factory _$AnilistDate([void Function(AnilistDateBuilder)? updates]) =>
      (new AnilistDateBuilder()..update(updates))._build();

  _$AnilistDate._({this.year, this.month, this.day}) : super._();

  @override
  AnilistDate rebuild(void Function(AnilistDateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AnilistDateBuilder toBuilder() => new AnilistDateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnilistDate &&
        year == other.year &&
        month == other.month &&
        day == other.day;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, year.hashCode);
    _$hash = $jc(_$hash, month.hashCode);
    _$hash = $jc(_$hash, day.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AnilistDate')
          ..add('year', year)
          ..add('month', month)
          ..add('day', day))
        .toString();
  }
}

class AnilistDateBuilder implements Builder<AnilistDate, AnilistDateBuilder> {
  _$AnilistDate? _$v;

  int? _year;
  int? get year => _$this._year;
  set year(int? year) => _$this._year = year;

  int? _month;
  int? get month => _$this._month;
  set month(int? month) => _$this._month = month;

  int? _day;
  int? get day => _$this._day;
  set day(int? day) => _$this._day = day;

  AnilistDateBuilder();

  AnilistDateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _year = $v.year;
      _month = $v.month;
      _day = $v.day;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnilistDate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AnilistDate;
  }

  @override
  void update(void Function(AnilistDateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AnilistDate build() => _build();

  _$AnilistDate _build() {
    final _$result =
        _$v ?? new _$AnilistDate._(year: year, month: month, day: day);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
