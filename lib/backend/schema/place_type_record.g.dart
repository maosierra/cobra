// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_type_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlaceTypeRecord> _$placeTypeRecordSerializer =
    new _$PlaceTypeRecordSerializer();

class _$PlaceTypeRecordSerializer
    implements StructuredSerializer<PlaceTypeRecord> {
  @override
  final Iterable<Type> types = const [PlaceTypeRecord, _$PlaceTypeRecord];
  @override
  final String wireName = 'PlaceTypeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlaceTypeRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PlaceTypeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceTypeRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PlaceTypeRecord extends PlaceTypeRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlaceTypeRecord([void Function(PlaceTypeRecordBuilder)? updates]) =>
      (new PlaceTypeRecordBuilder()..update(updates))._build();

  _$PlaceTypeRecord._({this.name, this.description, this.status, this.ffRef})
      : super._();

  @override
  PlaceTypeRecord rebuild(void Function(PlaceTypeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceTypeRecordBuilder toBuilder() =>
      new PlaceTypeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceTypeRecord &&
        name == other.name &&
        description == other.description &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), description.hashCode), status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceTypeRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlaceTypeRecordBuilder
    implements Builder<PlaceTypeRecord, PlaceTypeRecordBuilder> {
  _$PlaceTypeRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlaceTypeRecordBuilder() {
    PlaceTypeRecord._initializeBuilder(this);
  }

  PlaceTypeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceTypeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaceTypeRecord;
  }

  @override
  void update(void Function(PlaceTypeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceTypeRecord build() => _build();

  _$PlaceTypeRecord _build() {
    final _$result = _$v ??
        new _$PlaceTypeRecord._(
            name: name, description: description, status: status, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
