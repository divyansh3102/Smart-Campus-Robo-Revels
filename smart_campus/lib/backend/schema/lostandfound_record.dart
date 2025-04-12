import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LostandfoundRecord extends FirestoreRecord {
  LostandfoundRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "itemtype" field.
  String? _itemtype;
  String get itemtype => _itemtype ?? '';
  bool hasItemtype() => _itemtype != null;

  // "itemname" field.
  String? _itemname;
  String get itemname => _itemname ?? '';
  bool hasItemname() => _itemname != null;

  // "discription" field.
  String? _discription;
  String get discription => _discription ?? '';
  bool hasDiscription() => _discription != null;

  // "catigory" field.
  String? _catigory;
  String get catigory => _catigory ?? '';
  bool hasCatigory() => _catigory != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "contectinfo" field.
  String? _contectinfo;
  String get contectinfo => _contectinfo ?? '';
  bool hasContectinfo() => _contectinfo != null;

  void _initializeFields() {
    _itemtype = snapshotData['itemtype'] as String?;
    _itemname = snapshotData['itemname'] as String?;
    _discription = snapshotData['discription'] as String?;
    _catigory = snapshotData['catigory'] as String?;
    _image = snapshotData['image'] as String?;
    _location = snapshotData['location'] as String?;
    _contectinfo = snapshotData['contectinfo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lostandfound');

  static Stream<LostandfoundRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LostandfoundRecord.fromSnapshot(s));

  static Future<LostandfoundRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LostandfoundRecord.fromSnapshot(s));

  static LostandfoundRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LostandfoundRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LostandfoundRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LostandfoundRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LostandfoundRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LostandfoundRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLostandfoundRecordData({
  String? itemtype,
  String? itemname,
  String? discription,
  String? catigory,
  String? image,
  String? location,
  String? contectinfo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'itemtype': itemtype,
      'itemname': itemname,
      'discription': discription,
      'catigory': catigory,
      'image': image,
      'location': location,
      'contectinfo': contectinfo,
    }.withoutNulls,
  );

  return firestoreData;
}

class LostandfoundRecordDocumentEquality
    implements Equality<LostandfoundRecord> {
  const LostandfoundRecordDocumentEquality();

  @override
  bool equals(LostandfoundRecord? e1, LostandfoundRecord? e2) {
    return e1?.itemtype == e2?.itemtype &&
        e1?.itemname == e2?.itemname &&
        e1?.discription == e2?.discription &&
        e1?.catigory == e2?.catigory &&
        e1?.image == e2?.image &&
        e1?.location == e2?.location &&
        e1?.contectinfo == e2?.contectinfo;
  }

  @override
  int hash(LostandfoundRecord? e) => const ListEquality().hash([
        e?.itemtype,
        e?.itemname,
        e?.discription,
        e?.catigory,
        e?.image,
        e?.location,
        e?.contectinfo
      ]);

  @override
  bool isValidKey(Object? o) => o is LostandfoundRecord;
}
