// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlaceRecord> _$placeRecordSerializer = new _$PlaceRecordSerializer();

class _$PlaceRecordSerializer implements StructuredSerializer<PlaceRecord> {
  @override
  final Iterable<Type> types = const [PlaceRecord, _$PlaceRecord];
  @override
  final String wireName = 'PlaceRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PlaceRecord object,
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
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.geolocation;
    if (value != null) {
      result
        ..add('geolocation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  PlaceRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlaceRecordBuilder();

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
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'geolocation':
          result.geolocation = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$PlaceRecord extends PlaceRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? address;
  @override
  final LatLng? geolocation;
  @override
  final bool? status;
  @override
  final DocumentReference<Object?>? type;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PlaceRecord([void Function(PlaceRecordBuilder)? updates]) =>
      (new PlaceRecordBuilder()..update(updates))._build();

  _$PlaceRecord._(
      {this.name,
      this.description,
      this.address,
      this.geolocation,
      this.status,
      this.type,
      this.ffRef})
      : super._();

  @override
  PlaceRecord rebuild(void Function(PlaceRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlaceRecordBuilder toBuilder() => new PlaceRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlaceRecord &&
        name == other.name &&
        description == other.description &&
        address == other.address &&
        geolocation == other.geolocation &&
        status == other.status &&
        type == other.type &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), description.hashCode),
                        address.hashCode),
                    geolocation.hashCode),
                status.hashCode),
            type.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PlaceRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('address', address)
          ..add('geolocation', geolocation)
          ..add('status', status)
          ..add('type', type)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PlaceRecordBuilder implements Builder<PlaceRecord, PlaceRecordBuilder> {
  _$PlaceRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  LatLng? _geolocation;
  LatLng? get geolocation => _$this._geolocation;
  set geolocation(LatLng? geolocation) => _$this._geolocation = geolocation;

  bool? _status;
  bool? get status => _$this._status;
  set status(bool? status) => _$this._status = status;

  DocumentReference<Object?>? _type;
  DocumentReference<Object?>? get type => _$this._type;
  set type(DocumentReference<Object?>? type) => _$this._type = type;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PlaceRecordBuilder() {
    PlaceRecord._initializeBuilder(this);
  }

  PlaceRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _address = $v.address;
      _geolocation = $v.geolocation;
      _status = $v.status;
      _type = $v.type;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PlaceRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlaceRecord;
  }

  @override
  void update(void Function(PlaceRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PlaceRecord build() => _build();

  _$PlaceRecord _build() {
    final _$result = _$v ??
        new _$PlaceRecord._(
            name: name,
            description: description,
            address: address,
            geolocation: geolocation,
            status: status,
            type: type,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
