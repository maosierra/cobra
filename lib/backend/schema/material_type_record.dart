import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'material_type_record.g.dart';

abstract class MaterialTypeRecord
    implements Built<MaterialTypeRecord, MaterialTypeRecordBuilder> {
  static Serializer<MaterialTypeRecord> get serializer =>
      _$materialTypeRecordSerializer;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get description;

  @BuiltValueField(wireName: 'created_by')
  DocumentReference? get createdBy;

  bool? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MaterialTypeRecordBuilder builder) => builder
    ..displayName = ''
    ..description = ''
    ..status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('material_type');

  static Stream<MaterialTypeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MaterialTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MaterialTypeRecord._();
  factory MaterialTypeRecord(
          [void Function(MaterialTypeRecordBuilder) updates]) =
      _$MaterialTypeRecord;

  static MaterialTypeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMaterialTypeRecordData({
  String? displayName,
  String? description,
  DocumentReference? createdBy,
  bool? status,
}) {
  final firestoreData = serializers.toFirestore(
    MaterialTypeRecord.serializer,
    MaterialTypeRecord(
      (m) => m
        ..displayName = displayName
        ..description = description
        ..createdBy = createdBy
        ..status = status,
    ),
  );

  return firestoreData;
}
