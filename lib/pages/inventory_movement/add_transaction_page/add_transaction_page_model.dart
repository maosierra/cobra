import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddTransactionPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for SpentAt widget.
  TextEditingController? spentAtController;
  String? Function(BuildContext, String?)? spentAtControllerValidator;
  // State field(s) for budget widget.
  String? budgetValue;
  FormFieldController<String>? budgetController;
  // State field(s) for reason widget.
  TextEditingController? reasonController;
  String? Function(BuildContext, String?)? reasonControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController1?.dispose();
    spentAtController?.dispose();
    reasonController?.dispose();
  }

  /// Additional helper methods are added here.

}
