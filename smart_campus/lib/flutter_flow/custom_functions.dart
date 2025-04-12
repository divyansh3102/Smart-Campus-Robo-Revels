import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

List<DocumentReference> newCustomFunction(
  DocumentReference authuser,
  DocumentReference otheruser,
) {
  return [authuser, otheruser];
}

List<String> chatlistofnames(
  String authusername,
  String otherusername,
) {
  return [authusername, otherusername];
}

List<DocumentReference> listofauthuser(
  DocumentReference authuser,
  DocumentReference otherusers,
) {
  return [authuser, otherusers];
}

DocumentReference liststudent(
  List<DocumentReference> otheruser,
  DocumentReference authuser,
) {
  return authuser == otheruser.first ? otheruser.last : otheruser.first;
}

String getotherusername(
  List<String> listofnames,
  String authuser,
) {
  return authuser == listofnames.first ? listofnames.last : listofnames.first;
}
