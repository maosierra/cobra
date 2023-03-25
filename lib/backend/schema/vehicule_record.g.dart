// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicule_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VehiculeRecord> _$vehiculeRecordSerializer =
    new _$VehiculeRecordSerializer();

class _$VehiculeRecordSerializer
    implements StructuredSerializer<VehiculeRecord> {
  @override
  final Iterable<Type> types = const [VehiculeRecord, _$VehiculeRecord];
  @override
  final String wireName = 'VehiculeRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VehiculeRecord object,
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
    value = object.capacity;
    if (value != null) {
      result
        ..add('capacity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.driverName;
    if (value != null) {
      result
        ..add('driver_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
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
  VehiculeRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehiculeRecordBuilder();

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
        case 'capacity':
          result.capacity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'driver_name':
          result.driverName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
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

class _$VehiculeRecord extends VehiculeRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final double? capacity;
  @override
  final String? driverName;
  @override
  final DocumentReference<Object?>? type;
  @override
  final bool? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VehiculeRecord([void Function(VehiculeRecordBuilder)? updates]) =>
      (new VehiculeRecordBuilder()..update(updates))._build();

  _$VehiculeRecord._(
      {this.name,
      this.description,
      this.capacity,
      this.driverName,
      this.type,
      this.status,
      this.ffRef})
      : super._();

  @override
  VehiculeRecord rebuild(void Function(VehiculeRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehiculeRecordBuilder toBuilder() =>
      new VehiculeRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VehiculeRecord &&
        name == other.name &&
        description == other.description &&
        capacity == other.capacity &&
        driverName == other.driverName &&
        type == other.type &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        capacity.hashCode),
                    driverName.hashCode),
                type.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VehiculeRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('capacity', capacity)
          ..add('driverName', driverName)
          ..add('type', type)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VehiculeRecordBuilder
    implements Builder<VehiculeRecord, VehiculeRecordBuilder> {
  _$VehiculeRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  double? _capacity;
  double? get capacity => _$this._capacity;
  set capacity(double? capacity) => _$this._capacity = capacity;

  String? _driverName;
  String? get driverName => _$this._driverName;
  set driverName(String? driverName) => _$this._driverName = driverName;

  DocumentReference<Object?>? _type;
  DocumentReference<Object?>? get type => _$this._type;
  set type(DocumentReference<Object?>? type) => _$this._type = type;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VehiculeRecordBuilder() {
    VehiculeRecord._initializeBuilder(this);
  }

  VehiculeRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _capacity = $v.capacity;
      _driverName = $v.driverName;
      _type = $v.type;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VehiculeRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VehiculeRecord;
  }

  @override
  void update(void Function(VehiculeRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VehiculeRecord build() => _build();

  _$VehiculeRecord _build() {
    final _$result = _$v ??
        new _$VehiculeRecord._(
            name: name,
            description: description,
            capacity: capacity,
            driverName: driverName,
            type: type,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
