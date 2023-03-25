import '/auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class AddVehiculePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for vehiculeName widget.
  TextEditingController? vehiculeNameController;
  String? Function(BuildContext, String?)? vehiculeNameControllerValidator;
  // State field(s) for capacity widget.
  TextEditingController? capacityController;
  final capacityMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? capacityControllerValidator;
  // State field(s) for driverName widget.
  TextEditingController? driverNameController;
  String? Function(BuildContext, String?)? driverNameControllerValidator;
  // State field(s) for type widget.
  String? typeValue;
  FormFieldController<String>? typeController;
  // State field(s) for description widget.
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    vehiculeNameController?.dispose();
    capacityController?.dispose();
    driverNameController?.dispose();
    descriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
