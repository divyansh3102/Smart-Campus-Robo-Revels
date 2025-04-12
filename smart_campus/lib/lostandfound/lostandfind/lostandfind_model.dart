import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'lostandfind_widget.dart' show LostandfindWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LostandfindModel extends FlutterFlowModel<LostandfindWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for book widget.
  FocusNode? bookFocusNode1;
  TextEditingController? bookTextController1;
  String? Function(BuildContext, String?)? bookTextController1Validator;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for book widget.
  FocusNode? bookFocusNode2;
  TextEditingController? bookTextController2;
  String? Function(BuildContext, String?)? bookTextController2Validator;
  // State field(s) for book widget.
  FocusNode? bookFocusNode3;
  TextEditingController? bookTextController3;
  String? Function(BuildContext, String?)? bookTextController3Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    bookFocusNode1?.dispose();
    bookTextController1?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    bookFocusNode2?.dispose();
    bookTextController2?.dispose();

    bookFocusNode3?.dispose();
    bookTextController3?.dispose();
  }
}
