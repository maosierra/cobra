import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'place_record.g.dart';

abstract class PlaceRecord implements Built<PlaceRecord, PlaceRecordBuilder> {
  static Serializer<PlaceRecord> get serializer => _$placeRecordSerializer;

  String? get name;

  String? get description;

  String? get address;

  LatLng? get geolocation;

  bool? get status;

  DocumentReference? get type;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PlaceRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..address = ''
    ..status = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('place');

  static Stream<PlaceRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PlaceRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PlaceRecord._();
  factory PlaceRecord([void Function(PlaceRecordBuilder) updates]) =
      _$PlaceRecord;

  static PlaceRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPlaceRecordData({
  String? name,
  String? description,
  String? address,
  LatLng? geolocation,
  bool? status,
  DocumentReference? type,
}) {
  final firestoreData = serializers.toFirestore(
    PlaceRecord.serializer,
    PlaceRecord(
      (p) => p
        ..name = name
        ..description = description
        ..address = address
        ..geolocation = geolocation
        ..status = status
        ..type = type,
    ),
  );

  return firestoreData;
}
