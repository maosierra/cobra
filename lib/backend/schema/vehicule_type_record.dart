import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vehicule_type_record.g.dart';

abstract class VehiculeTypeRecord
    implements Built<VehiculeTypeRecord, VehiculeTypeRecordBuilder> {
  static Serializer<VehiculeTypeRecord> get serializer =>
      _$vehiculeTypeRecordSerializer;

  String? get name;

  String? get description;

  bool? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VehiculeTypeRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicule_type');

  static Stream<VehiculeTypeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VehiculeTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VehiculeTypeRecord._();
  factory VehiculeTypeRecord(
          [void Function(VehiculeTypeRecordBuilder) updates]) =
      _$VehiculeTypeRecord;

  static VehiculeTypeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVehiculeTypeRecordData({
  String? name,
  String? description,
  bool? status,
}) {
  final firestoreData = serializers.toFirestore(
    VehiculeTypeRecord.serializer,
    VehiculeTypeRecord(
      (v) => v
        ..name = name
        ..description = description
        ..status = status,
    ),
  );

  return firestoreData;
}
