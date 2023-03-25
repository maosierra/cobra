import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'material_record.g.dart';

abstract class MaterialRecord
    implements Built<MaterialRecord, MaterialRecordBuilder> {
  static Serializer<MaterialRecord> get serializer =>
      _$materialRecordSerializer;

  String? get name;

  double? get price;

  String? get description;

  @BuiltValueField(wireName: 'created_by')
  DocumentReference? get createdBy;

  bool? get status;

  @BuiltValueField(wireName: 'unit_of_measure')
  DocumentReference? get unitOfMeasure;

  @BuiltValueField(wireName: 'created_date')
  DateTime? get createdDate;

  DocumentReference? get type;

  @BuiltValueField(wireName: 'unit_of_measure_name')
  String? get unitOfMeasureName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MaterialRecordBuilder builder) => builder
    ..name = ''
    ..price = 0.0
    ..description = ''
    ..status = false
    ..unitOfMeasureName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('material');

  static Stream<MaterialRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MaterialRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MaterialRecord._();
  factory MaterialRecord([void Function(MaterialRecordBuilder) updates]) =
      _$MaterialRecord;

  static MaterialRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMaterialRecordData({
  String? name,
  double? price,
  String? description,
  DocumentReference? createdBy,
  bool? status,
  DocumentReference? unitOfMeasure,
  DateTime? createdDate,
  DocumentReference? type,
  String? unitOfMeasureName,
}) {
  final firestoreData = serializers.toFirestore(
    MaterialRecord.serializer,
    MaterialRecord(
      (m) => m
        ..name = name
        ..price = price
        ..description = description
        ..createdBy = createdBy
        ..status = status
        ..unitOfMeasure = unitOfMeasure
        ..createdDate = createdDate
        ..type = type
        ..unitOfMeasureName = unitOfMeasureName,
    ),
  );

  return firestoreData;
}
