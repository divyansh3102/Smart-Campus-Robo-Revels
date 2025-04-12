import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatsRecord extends FirestoreRecord {
  ChatsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "usersid" field.
  List<DocumentReference>? _usersid;
  List<DocumentReference> get usersid => _usersid ?? const [];
  bool hasUsersid() => _usersid != null;

  // "lastmessege" field.
  String? _lastmessege;
  String get lastmessege => _lastmessege ?? '';
  bool hasLastmessege() => _lastmessege != null;

  // "usernames" field.
  List<String>? _usernames;
  List<String> get usernames => _usernames ?? const [];
  bool hasUsernames() => _usernames != null;

  // "timestamp" field.
  DateTime? _timestamp;
  DateTime? get timestamp => _timestamp;
  bool hasTimestamp() => _timestamp != null;

  // "lastmessegeseen" field.
  List<DocumentReference>? _lastmessegeseen;
  List<DocumentReference> get lastmessegeseen => _lastmessegeseen ?? const [];
  bool hasLastmessegeseen() => _lastmessegeseen != null;

  void _initializeFields() {
    _usersid = getDataList(snapshotData['usersid']);
    _lastmessege = snapshotData['lastmessege'] as String?;
    _usernames = getDataList(snapshotData['usernames']);
    _timestamp = snapshotData['timestamp'] as DateTime?;
    _lastmessegeseen = getDataList(snapshotData['lastmessegeseen']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Chats');

  static Stream<ChatsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatsRecord.fromSnapshot(s));

  static Future<ChatsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatsRecord.fromSnapshot(s));

  static ChatsRecord fromSnapshot(DocumentSnapshot snapshot) => ChatsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatsRecordData({
  String? lastmessege,
  DateTime? timestamp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lastmessege': lastmessege,
      'timestamp': timestamp,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatsRecordDocumentEquality implements Equality<ChatsRecord> {
  const ChatsRecordDocumentEquality();

  @override
  bool equals(ChatsRecord? e1, ChatsRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.usersid, e2?.usersid) &&
        e1?.lastmessege == e2?.lastmessege &&
        listEquality.equals(e1?.usernames, e2?.usernames) &&
        e1?.timestamp == e2?.timestamp &&
        listEquality.equals(e1?.lastmessegeseen, e2?.lastmessegeseen);
  }

  @override
  int hash(ChatsRecord? e) => const ListEquality().hash([
        e?.usersid,
        e?.lastmessege,
        e?.usernames,
        e?.timestamp,
        e?.lastmessegeseen
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatsRecord;
}
