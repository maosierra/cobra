// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_of_measure_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UnitOfMeasureRecord> _$unitOfMeasureRecordSerializer =
    new _$UnitOfMeasureRecordSerializer();

class _$UnitOfMeasureRecordSerializer
    implements StructuredSerializer<UnitOfMeasureRecord> {
  @override
  final Iterable<Type> types = const [
    UnitOfMeasureRecord,
    _$UnitOfMeasureRecord
  ];
  @override
  final String wireName = 'UnitOfMeasureRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UnitOfMeasureRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
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
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  UnitOfMeasureRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UnitOfMeasureRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$UnitOfMeasureRecord extends UnitOfMeasureRecord {
  @override
  final String? displayName;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final bool? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UnitOfMeasureRecord(
          [void Function(UnitOfMeasureRecordBuilder)? updates]) =>
      (new UnitOfMeasureRecordBuilder()..update(updates))._build();

  _$UnitOfMeasureRecord._(
      {this.displayName,
      this.description,
      this.createdBy,
      this.status,
      this.ffRef})
      : super._();

  @override
  UnitOfMeasureRecord rebuild(
          void Function(UnitOfMeasureRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UnitOfMeasureRecordBuilder toBuilder() =>
      new UnitOfMeasureRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UnitOfMeasureRecord &&
        displayName == other.displayName &&
        description == other.description &&
        createdBy == other.createdBy &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, displayName.hashCode), description.hashCode),
                createdBy.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UnitOfMeasureRecord')
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('createdBy', createdBy)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UnitOfMeasureRecordBuilder
    implements Builder<UnitOfMeasureRecord, UnitOfMeasureRecordBuilder> {
  _$UnitOfMeasureRecord? _$v;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UnitOfMeasureRecordBuilder() {
    UnitOfMeasureRecord._initializeBuilder(this);
  }

  UnitOfMeasureRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _description = $v.description;
      _createdBy = $v.createdBy;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UnitOfMeasureRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UnitOfMeasureRecord;
  }

  @override
  void update(void Function(UnitOfMeasureRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UnitOfMeasureRecord build() => _build();

  _$UnitOfMeasureRecord _build() {
    final _$result = _$v ??
        new _$UnitOfMeasureRecord._(
            displayName: displayName,
            description: description,
            createdBy: createdBy,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
