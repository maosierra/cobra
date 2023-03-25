import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'place_type_record.g.dart';

abstract class PlaceTypeRecord
    implements Built<PlaceTypeRecord, PlaceTypeRecordBuilder> {
  static Serializer<PlaceTypeRecord> get serializer =>
      _$placeTypeRecordSerializer;

  String? get name;

  String? get description;

  bool? get status;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlaceTypeRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('place_type');

  static Stream<PlaceTypeRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlaceTypeRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlaceTypeRecord._();
  factory PlaceTypeRecord([void Function(PlaceTypeRecordBuilder) updates]) =
      _$PlaceTypeRecord;

  static PlaceTypeRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlaceTypeRecordData({
  String? name,
  String? description,
  bool? status,
}) {
  final firestoreData = serializers.toFirestore(
    PlaceTypeRecord.serializer,
    PlaceTypeRecord(
      (p) => p
        ..name = name
        ..description = description
        ..status = status,
    ),
  );

  return firestoreData;
}
