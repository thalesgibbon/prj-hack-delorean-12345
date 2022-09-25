import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'cotagenerator_record.g.dart';

abstract class CotageneratorRecord
    implements Built<CotageneratorRecord, CotageneratorRecordBuilder> {
  static Serializer<CotageneratorRecord> get serializer =>
      _$cotageneratorRecordSerializer;

  String? get name;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CotageneratorRecordBuilder builder) =>
      builder..name = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cotagenerator');

  static Stream<CotageneratorRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CotageneratorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CotageneratorRecord._();
  factory CotageneratorRecord(
          [void Function(CotageneratorRecordBuilder) updates]) =
      _$CotageneratorRecord;

  static CotageneratorRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCotageneratorRecordData({
  String? name,
}) {
  final firestoreData = serializers.toFirestore(
    CotageneratorRecord.serializer,
    CotageneratorRecord(
      (c) => c..name = name,
    ),
  );

  return firestoreData;
}
