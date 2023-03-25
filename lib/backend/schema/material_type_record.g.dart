// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_type_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaterialTypeRecord> _$materialTypeRecordSerializer =
    new _$MaterialTypeRecordSerializer();

class _$MaterialTypeRecordSerializer
    implements StructuredSerializer<MaterialTypeRecord> {
  @override
  final Iterable<Type> types = const [MaterialTypeRecord, _$MaterialTypeRecord];
  @override
  final String wireName = 'MaterialTypeRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, MaterialTypeRecord object,
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
  MaterialTypeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaterialTypeRecordBuilder();

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

class _$MaterialTypeRecord extends MaterialTypeRecord {
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

  factory _$MaterialTypeRecord(
          [void Function(MaterialTypeRecordBuilder)? updates]) =>
      (new MaterialTypeRecordBuilder()..update(updates))._build();

  _$MaterialTypeRecord._(
      {this.displayName,
      this.description,
      this.createdBy,
      this.status,
      this.ffRef})
      : super._();

  @override
  MaterialTypeRecord rebuild(
          void Function(MaterialTypeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialTypeRecordBuilder toBuilder() =>
      new MaterialTypeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialTypeRecord &&
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
    return (newBuiltValueToStringHelper(r'MaterialTypeRecord')
          ..add('displayName', displayName)
          ..add('description', description)
          ..add('createdBy', createdBy)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MaterialTypeRecordBuilder
    implements Builder<MaterialTypeRecord, MaterialTypeRecordBuilder> {
  _$MaterialTypeRecord? _$v;

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

  MaterialTypeRecordBuilder() {
    MaterialTypeRecord._initializeBuilder(this);
  }

  MaterialTypeRecordBuilder get _$this {
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
  void replace(MaterialTypeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaterialTypeRecord;
  }

  @override
  void update(void Function(MaterialTypeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaterialTypeRecord build() => _build();

  _$MaterialTypeRecord _build() {
    final _$result = _$v ??
        new _$MaterialTypeRecord._(
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
