import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vehicule_record.g.dart';

abstract class VehiculeRecord
    implements Built<VehiculeRecord, VehiculeRecordBuilder> {
  static Serializer<VehiculeRecord> get serializer =>
      _$vehiculeRecordSerializer;

  String? get name;

  String? get description;

  double? get capacity;

  @BuiltValueField(wireName: 'driver_name')
  String? get driverName;

  DocumentReference? get type;

  bool? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VehiculeRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..capacity = 0.0
    ..driverName = ''
    ..status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicule');

  static Stream<VehiculeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VehiculeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VehiculeRecord._();
  factory VehiculeRecord([void Function(VehiculeRecordBuilder) updates]) =
      _$VehiculeRecord;

  static VehiculeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVehiculeRecordData({
  String? name,
  String? description,
  double? capacity,
  String? driverName,
  DocumentReference? type,
  bool? status,
}) {
  final firestoreData = serializers.toFirestore(
    VehiculeRecord.serializer,
    VehiculeRecord(
      (v) => v
        ..name = name
        ..description = description
        ..capacity = capacity
        ..driverName = driverName
        ..type = type
        ..status = status,
    ),
  );

  return firestoreData;
}
