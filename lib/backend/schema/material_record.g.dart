// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MaterialRecord> _$materialRecordSerializer =
    new _$MaterialRecordSerializer();

class _$MaterialRecordSerializer
    implements StructuredSerializer<MaterialRecord> {
  @override
  final Iterable<Type> types = const [MaterialRecord, _$MaterialRecord];
  @override
  final String wireName = 'MaterialRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MaterialRecord object,
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
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
    value = object.unitOfMeasure;
    if (value != null) {
      result
        ..add('unit_of_measure')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdDate;
    if (value != null) {
      result
        ..add('created_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.unitOfMeasureName;
    if (value != null) {
      result
        ..add('unit_of_measure_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  MaterialRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MaterialRecordBuilder();

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
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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
        case 'unit_of_measure':
          result.unitOfMeasure = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'created_date':
          result.createdDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'unit_of_measure_name':
          result.unitOfMeasureName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$MaterialRecord extends MaterialRecord {
  @override
  final String? name;
  @override
  final double? price;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final bool? status;
  @override
  final DocumentReference<Object?>? unitOfMeasure;
  @override
  final DateTime? createdDate;
  @override
  final DocumentReference<Object?>? type;
  @override
  final String? unitOfMeasureName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MaterialRecord([void Function(MaterialRecordBuilder)? updates]) =>
      (new MaterialRecordBuilder()..update(updates))._build();

  _$MaterialRecord._(
      {this.name,
      this.price,
      this.description,
      this.createdBy,
      this.status,
      this.unitOfMeasure,
      this.createdDate,
      this.type,
      this.unitOfMeasureName,
      this.ffRef})
      : super._();

  @override
  MaterialRecord rebuild(void Function(MaterialRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MaterialRecordBuilder toBuilder() =>
      new MaterialRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MaterialRecord &&
        name == other.name &&
        price == other.price &&
        description == other.description &&
        createdBy == other.createdBy &&
        status == other.status &&
        unitOfMeasure == other.unitOfMeasure &&
        createdDate == other.createdDate &&
        type == other.type &&
        unitOfMeasureName == other.unitOfMeasureName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, name.hashCode), price.hashCode),
                                    description.hashCode),
                                createdBy.hashCode),
                            status.hashCode),
                        unitOfMeasure.hashCode),
                    createdDate.hashCode),
                type.hashCode),
            unitOfMeasureName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MaterialRecord')
          ..add('name', name)
          ..add('price', price)
          ..add('description', description)
          ..add('createdBy', createdBy)
          ..add('status', status)
          ..add('unitOfMeasure', unitOfMeasure)
          ..add('createdDate', createdDate)
          ..add('type', type)
          ..add('unitOfMeasureName', unitOfMeasureName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MaterialRecordBuilder
    implements Builder<MaterialRecord, MaterialRecordBuilder> {
  _$MaterialRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

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

  DocumentReference<Object?>? _unitOfMeasure;
  DocumentReference<Object?>? get unitOfMeasure => _$this._unitOfMeasure;
  set unitOfMeasure(DocumentReference<Object?>? unitOfMeasure) =>
      _$this._unitOfMeasure = unitOfMeasure;

  DateTime? _createdDate;
  DateTime? get createdDate => _$this._createdDate;
  set createdDate(DateTime? createdDate) => _$this._createdDate = createdDate;

  DocumentReference<Object?>? _type;
  DocumentReference<Object?>? get type => _$this._type;
  set type(DocumentReference<Object?>? type) => _$this._type = type;

  String? _unitOfMeasureName;
  String? get unitOfMeasureName => _$this._unitOfMeasureName;
  set unitOfMeasureName(String? unitOfMeasureName) =>
      _$this._unitOfMeasureName = unitOfMeasureName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MaterialRecordBuilder() {
    MaterialRecord._initializeBuilder(this);
  }

  MaterialRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _price = $v.price;
      _description = $v.description;
      _createdBy = $v.createdBy;
      _status = $v.status;
      _unitOfMeasure = $v.unitOfMeasure;
      _createdDate = $v.createdDate;
      _type = $v.type;
      _unitOfMeasureName = $v.unitOfMeasureName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MaterialRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MaterialRecord;
  }

  @override
  void update(void Function(MaterialRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MaterialRecord build() => _build();

  _$MaterialRecord _build() {
    final _$result = _$v ??
        new _$MaterialRecord._(
            name: name,
            price: price,
            description: description,
            createdBy: createdBy,
            status: status,
            unitOfMeasure: unitOfMeasure,
            createdDate: createdDate,
            type: type,
            unitOfMeasureName: unitOfMeasureName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
