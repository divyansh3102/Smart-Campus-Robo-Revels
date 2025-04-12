import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TaskRecord extends FirestoreRecord {
  TaskRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userid" field.
  DocumentReference? _userid;
  DocumentReference? get userid => _userid;
  bool hasUserid() => _userid != null;

  // "titel" field.
  String? _titel;
  String get titel => _titel ?? '';
  bool hasTitel() => _titel != null;

  // "discription" field.
  String? _discription;
  String get discription => _discription ?? '';
  bool hasDiscription() => _discription != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "isimportent" field.
  bool? _isimportent;
  bool get isimportent => _isimportent ?? false;
  bool hasIsimportent() => _isimportent != null;

  // "createtedat" field.
  DateTime? _createtedat;
  DateTime? get createtedat => _createtedat;
  bool hasCreatetedat() => _createtedat != null;

  void _initializeFields() {
    _userid = snapshotData['userid'] as DocumentReference?;
    _titel = snapshotData['titel'] as String?;
    _discription = snapshotData['discription'] as String?;
    _status = snapshotData['status'] as String?;
    _isimportent = snapshotData['isimportent'] as bool?;
    _createtedat = snapshotData['createtedat'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('task');

  static Stream<TaskRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TaskRecord.fromSnapshot(s));

  static Future<TaskRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TaskRecord.fromSnapshot(s));

  static TaskRecord fromSnapshot(DocumentSnapshot snapshot) => TaskRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TaskRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TaskRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TaskRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TaskRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTaskRecordData({
  DocumentReference? userid,
  String? titel,
  String? discription,
  String? status,
  bool? isimportent,
  DateTime? createtedat,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userid': userid,
      'titel': titel,
      'discription': discription,
      'status': status,
      'isimportent': isimportent,
      'createtedat': createtedat,
    }.withoutNulls,
  );

  return firestoreData;
}

class TaskRecordDocumentEquality implements Equality<TaskRecord> {
  const TaskRecordDocumentEquality();

  @override
  bool equals(TaskRecord? e1, TaskRecord? e2) {
    return e1?.userid == e2?.userid &&
        e1?.titel == e2?.titel &&
        e1?.discription == e2?.discription &&
        e1?.status == e2?.status &&
        e1?.isimportent == e2?.isimportent &&
        e1?.createtedat == e2?.createtedat;
  }

  @override
  int hash(TaskRecord? e) => const ListEquality().hash([
        e?.userid,
        e?.titel,
        e?.discription,
        e?.status,
        e?.isimportent,
        e?.createtedat
      ]);

  @override
  bool isValidKey(Object? o) => o is TaskRecord;
}
