import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatmessegesRecord extends FirestoreRecord {
  ChatmessegesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "messege" field.
  String? _messege;
  String get messege => _messege ?? '';
  bool hasMessege() => _messege != null;

  // "timestams" field.
  DateTime? _timestams;
  DateTime? get timestams => _timestams;
  bool hasTimestams() => _timestams != null;

  // "uidofsender" field.
  DocumentReference? _uidofsender;
  DocumentReference? get uidofsender => _uidofsender;
  bool hasUidofsender() => _uidofsender != null;

  // "nameofsender" field.
  String? _nameofsender;
  String get nameofsender => _nameofsender ?? '';
  bool hasNameofsender() => _nameofsender != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _messege = snapshotData['messege'] as String?;
    _timestams = snapshotData['timestams'] as DateTime?;
    _uidofsender = snapshotData['uidofsender'] as DocumentReference?;
    _nameofsender = snapshotData['nameofsender'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('chatmesseges')
          : FirebaseFirestore.instance.collectionGroup('chatmesseges');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('chatmesseges').doc(id);

  static Stream<ChatmessegesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatmessegesRecord.fromSnapshot(s));

  static Future<ChatmessegesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatmessegesRecord.fromSnapshot(s));

  static ChatmessegesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatmessegesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatmessegesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatmessegesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatmessegesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatmessegesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatmessegesRecordData({
  String? messege,
  DateTime? timestams,
  DocumentReference? uidofsender,
  String? nameofsender,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'messege': messege,
      'timestams': timestams,
      'uidofsender': uidofsender,
      'nameofsender': nameofsender,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatmessegesRecordDocumentEquality
    implements Equality<ChatmessegesRecord> {
  const ChatmessegesRecordDocumentEquality();

  @override
  bool equals(ChatmessegesRecord? e1, ChatmessegesRecord? e2) {
    return e1?.messege == e2?.messege &&
        e1?.timestams == e2?.timestams &&
        e1?.uidofsender == e2?.uidofsender &&
        e1?.nameofsender == e2?.nameofsender;
  }

  @override
  int hash(ChatmessegesRecord? e) => const ListEquality()
      .hash([e?.messege, e?.timestams, e?.uidofsender, e?.nameofsender]);

  @override
  bool isValidKey(Object? o) => o is ChatmessegesRecord;
}
