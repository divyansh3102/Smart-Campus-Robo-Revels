import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrackingRecord extends FirestoreRecord {
  TrackingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userref" field.
  DocumentReference? _userref;
  DocumentReference? get userref => _userref;
  bool hasUserref() => _userref != null;

  // "destination" field.
  LatLng? _destination;
  LatLng? get destination => _destination;
  bool hasDestination() => _destination != null;

  // "distanceleft" field.
  String? _distanceleft;
  String get distanceleft => _distanceleft ?? '';
  bool hasDistanceleft() => _distanceleft != null;

  // "timeleft" field.
  String? _timeleft;
  String get timeleft => _timeleft ?? '';
  bool hasTimeleft() => _timeleft != null;

  // "source" field.
  LatLng? _source;
  LatLng? get source => _source;
  bool hasSource() => _source != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "driverposition" field.
  List<LatLng>? _driverposition;
  List<LatLng> get driverposition => _driverposition ?? const [];
  bool hasDriverposition() => _driverposition != null;

  void _initializeFields() {
    _userref = snapshotData['userref'] as DocumentReference?;
    _destination = snapshotData['destination'] as LatLng?;
    _distanceleft = snapshotData['distanceleft'] as String?;
    _timeleft = snapshotData['timeleft'] as String?;
    _source = snapshotData['source'] as LatLng?;
    _name = snapshotData['name'] as String?;
    _driverposition = getDataList(snapshotData['driverposition']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tracking');

  static Stream<TrackingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TrackingRecord.fromSnapshot(s));

  static Future<TrackingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TrackingRecord.fromSnapshot(s));

  static TrackingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TrackingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TrackingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TrackingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TrackingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TrackingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTrackingRecordData({
  DocumentReference? userref,
  LatLng? destination,
  String? distanceleft,
  String? timeleft,
  LatLng? source,
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userref': userref,
      'destination': destination,
      'distanceleft': distanceleft,
      'timeleft': timeleft,
      'source': source,
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class TrackingRecordDocumentEquality implements Equality<TrackingRecord> {
  const TrackingRecordDocumentEquality();

  @override
  bool equals(TrackingRecord? e1, TrackingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.userref == e2?.userref &&
        e1?.destination == e2?.destination &&
        e1?.distanceleft == e2?.distanceleft &&
        e1?.timeleft == e2?.timeleft &&
        e1?.source == e2?.source &&
        e1?.name == e2?.name &&
        listEquality.equals(e1?.driverposition, e2?.driverposition);
  }

  @override
  int hash(TrackingRecord? e) => const ListEquality().hash([
        e?.userref,
        e?.destination,
        e?.distanceleft,
        e?.timeleft,
        e?.source,
        e?.name,
        e?.driverposition
      ]);

  @override
  bool isValidKey(Object? o) => o is TrackingRecord;
}
