import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

/// View the available book
class BooksRecord extends FirestoreRecord {
  BooksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "discription" field.
  List<String>? _discription;
  List<String> get discription => _discription ?? const [];
  bool hasDiscription() => _discription != null;

  // "availability" field.
  String? _availability;
  String get availability => _availability ?? '';
  bool hasAvailability() => _availability != null;

  // "book_image" field.
  String? _bookImage;
  String get bookImage => _bookImage ?? '';
  bool hasBookImage() => _bookImage != null;

  // "book_name" field.
  String? _bookName;
  String get bookName => _bookName ?? '';
  bool hasBookName() => _bookName != null;

  void _initializeFields() {
    _discription = getDataList(snapshotData['discription']);
    _availability = snapshotData['availability'] as String?;
    _bookImage = snapshotData['book_image'] as String?;
    _bookName = snapshotData['book_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('books');

  static Stream<BooksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BooksRecord.fromSnapshot(s));

  static Future<BooksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BooksRecord.fromSnapshot(s));

  static BooksRecord fromSnapshot(DocumentSnapshot snapshot) => BooksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BooksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BooksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BooksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BooksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBooksRecordData({
  String? availability,
  String? bookImage,
  String? bookName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'availability': availability,
      'book_image': bookImage,
      'book_name': bookName,
    }.withoutNulls,
  );

  return firestoreData;
}

class BooksRecordDocumentEquality implements Equality<BooksRecord> {
  const BooksRecordDocumentEquality();

  @override
  bool equals(BooksRecord? e1, BooksRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.discription, e2?.discription) &&
        e1?.availability == e2?.availability &&
        e1?.bookImage == e2?.bookImage &&
        e1?.bookName == e2?.bookName;
  }

  @override
  int hash(BooksRecord? e) => const ListEquality()
      .hash([e?.discription, e?.availability, e?.bookImage, e?.bookName]);

  @override
  bool isValidKey(Object? o) => o is BooksRecord;
}
