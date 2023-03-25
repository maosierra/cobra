import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'unit_of_measure_record.g.dart';

abstract class UnitOfMeasureRecord
    implements Built<UnitOfMeasureRecord, UnitOfMeasureRecordBuilder> {
  static Serializer<UnitOfMeasureRecord> get serializer =>
      _$unitOfMeasureRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get description;

  @BuiltValueField(wireName: 'created_by')
  DocumentReference? get createdBy;

  bool? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UnitOfMeasureRecordBuilder builder) => builder
    ..displayName = ''
    ..description = ''
    ..status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('unit_of_measure');

  static Stream<UnitOfMeasureRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UnitOfMeasureRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UnitOfMeasureRecord._();
  factory UnitOfMeasureRecord(
          [void Function(UnitOfMeasureRecordBuilder) updates]) =
      _$UnitOfMeasureRecord;

  static UnitOfMeasureRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUnitOfMeasureRecordData({
  String? displayName,
  String? description,
  DocumentReference? createdBy,
  bool? status,
}) {
  final firestoreData = serializers.toFirestore(
    UnitOfMeasureRecord.serializer,
    UnitOfMeasureRecord(
      (u) => u
        ..displayName = displayName
        ..description = description
        ..createdBy = createdBy
        ..status = status,
    ),
  );

  return firestoreData;
}
