// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicule_type_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VehiculeTypeRecord> _$vehiculeTypeRecordSerializer =
    new _$VehiculeTypeRecordSerializer();

class _$VehiculeTypeRecordSerializer
    implements StructuredSerializer<VehiculeTypeRecord> {
  @override
  final Iterable<Type> types = const [VehiculeTypeRecord, _$VehiculeTypeRecord];
  @override
  final String wireName = 'VehiculeTypeRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, VehiculeTypeRecord object,
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
  VehiculeTypeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehiculeTypeRecordBuilder();

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

class _$VehiculeTypeRecord extends VehiculeTypeRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final bool? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VehiculeTypeRecord(
          [void Function(VehiculeTypeRecordBuilder)? updates]) =>
      (new VehiculeTypeRecordBuilder()..update(updates))._build();

  _$VehiculeTypeRecord._({this.name, this.description, this.status, this.ffRef})
      : super._();

  @override
  VehiculeTypeRecord rebuild(
          void Function(VehiculeTypeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehiculeTypeRecordBuilder toBuilder() =>
      new VehiculeTypeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VehiculeTypeRecord &&
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
    return (newBuiltValueToStringHelper(r'VehiculeTypeRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VehiculeTypeRecordBuilder
    implements Builder<VehiculeTypeRecord, VehiculeTypeRecordBuilder> {
  _$VehiculeTypeRecord? _$v;

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

  VehiculeTypeRecordBuilder() {
    VehiculeTypeRecord._initializeBuilder(this);
  }

  VehiculeTypeRecordBuilder get _$this {
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
  void replace(VehiculeTypeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VehiculeTypeRecord;
  }

  @override
  void update(void Function(VehiculeTypeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VehiculeTypeRecord build() => _build();

  _$VehiculeTypeRecord _build() {
    final _$result = _$v ??
        new _$VehiculeTypeRecord._(
            name: name, description: description, status: status, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
