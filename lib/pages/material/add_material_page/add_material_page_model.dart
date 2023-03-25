import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddMaterialPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  // State field(s) for price widget.
  TextEditingController? priceController;
  String? Function(BuildContext, String?)? priceControllerValidator;
  // State field(s) for TypeSelect widget.
  String? typeSelectValue;
  FormFieldController<String>? typeSelectController;
  // State field(s) for unitOfMeasureSelect widget.
  String? unitOfMeasureSelectValue;
  FormFieldController<String>? unitOfMeasureSelectController;
  // State field(s) for status widget.
  bool? statusValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    nameController?.dispose();
    descriptionController?.dispose();
    priceController?.dispose();
  }

  /// Additional helper methods are added here.

}
