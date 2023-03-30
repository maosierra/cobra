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
import 'add_material_page_model.dart';
export 'add_material_page_model.dart';

class AddMaterialPageWidget extends StatefulWidget {
  const AddMaterialPageWidget({Key? key}) : super(key: key);

  @override
  _AddMaterialPageWidgetState createState() => _AddMaterialPageWidgetState();
}

class _AddMaterialPageWidgetState extends State<AddMaterialPageWidget> {
  late AddMaterialPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddMaterialPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AddMaterialPage'});
    _model.nameController ??= TextEditingController();
    _model.descriptionController ??= TextEditingController();
    _model.priceController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          FFLocalizations.of(context).getText(
            'f6d3r6ud' /* Create Material */,
          ),
          style: FlutterFlowTheme.of(context).headlineMedium,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              buttonSize: 48.0,
              icon: Icon(
                Icons.close_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              onPressed: () async {
                logFirebaseEvent('ADD_MATERIAL_close_rounded_ICN_ON_TAP');
                context.pop();
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: StreamBuilder<List<UnitOfMeasureRecord>>(
            stream: queryUnitOfMeasureRecord(
              queryBuilder: (unitOfMeasureRecord) => unitOfMeasureRecord.where(
                  'display_name',
                  isEqualTo: _model.unitOfMeasureSelectValue),
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                );
              }
              List<UnitOfMeasureRecord> addUserFormUnitOfMeasureRecordList =
                  snapshot.data!;
              final addUserFormUnitOfMeasureRecord =
                  addUserFormUnitOfMeasureRecordList.isNotEmpty
                      ? addUserFormUnitOfMeasureRecordList.first
                      : null;
              return Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: StreamBuilder<List<MaterialTypeRecord>>(
                  stream: queryMaterialTypeRecord(
                    queryBuilder: (materialTypeRecord) =>
                        materialTypeRecord.where('display_name',
                            isEqualTo: _model.typeSelectValue),
                    singleRecord: true,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      );
                    }
                    List<MaterialTypeRecord>
                        parentColumnMaterialTypeRecordList = snapshot.data!;
                    final parentColumnMaterialTypeRecord =
                        parentColumnMaterialTypeRecordList.isNotEmpty
                            ? parentColumnMaterialTypeRecordList.first
                            : null;
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.nameController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    'axtwy92e' /* Material Name */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 32.0, 20.0, 12.0),
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                                textAlign: TextAlign.start,
                                validator: _model.nameControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.descriptionController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: FFLocalizations.of(context).getText(
                                    'ja65wm17' /* Enter description here... */,
                                  ),
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 32.0, 20.0, 12.0),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                textAlign: TextAlign.start,
                                maxLines: 4,
                                keyboardType: TextInputType.multiline,
                                validator: _model.descriptionControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 0.0),
                              child: TextFormField(
                                controller: _model.priceController,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText:
                                      FFLocalizations.of(context).getText(
                                    '8f7pf3cw' /* Material Price */,
                                  ),
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 32.0, 20.0, 12.0),
                                ),
                                style:
                                    FlutterFlowTheme.of(context).headlineSmall,
                                textAlign: TextAlign.start,
                                keyboardType: TextInputType.number,
                                validator: _model.priceControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: StreamBuilder<List<MaterialTypeRecord>>(
                                stream: queryMaterialTypeRecord(
                                  queryBuilder: (materialTypeRecord) =>
                                      materialTypeRecord
                                          .where('status', isEqualTo: true)
                                          .orderBy('display_name'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<MaterialTypeRecord>
                                      typeSelectMaterialTypeRecordList =
                                      snapshot.data!;
                                  return FlutterFlowDropDown<String>(
                                    controller: _model.typeSelectController ??=
                                        FormFieldController<String>(null),
                                    options: typeSelectMaterialTypeRecordList
                                        .map((e) => e.displayName)
                                        .withoutNulls
                                        .toList()
                                        .toList(),
                                    onChanged: (val) => setState(
                                        () => _model.typeSelectValue = val),
                                    height: 60.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'xkzflg9r' /* Select material type */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      size: 15.0,
                                    ),
                                    fillColor: Colors.white,
                                    elevation: 2.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: StreamBuilder<List<UnitOfMeasureRecord>>(
                                stream: queryUnitOfMeasureRecord(
                                  queryBuilder: (unitOfMeasureRecord) =>
                                      unitOfMeasureRecord
                                          .where('status', isEqualTo: true)
                                          .orderBy('display_name'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: CircularProgressIndicator(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                      ),
                                    );
                                  }
                                  List<UnitOfMeasureRecord>
                                      unitOfMeasureSelectUnitOfMeasureRecordList =
                                      snapshot.data!;
                                  return FlutterFlowDropDown<String>(
                                    controller:
                                        _model.unitOfMeasureSelectController ??=
                                            FormFieldController<String>(null),
                                    options:
                                        unitOfMeasureSelectUnitOfMeasureRecordList
                                            .map((e) => e.displayName)
                                            .withoutNulls
                                            .toList()
                                            .toList(),
                                    onChanged: (val) => setState(() =>
                                        _model.unitOfMeasureSelectValue = val),
                                    width: double.infinity,
                                    height: 60.0,
                                    textStyle:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'utmjntq2' /* Select unit of measure */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 15.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    borderWidth: 2.0,
                                    borderRadius: 8.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        24.0, 4.0, 12.0, 4.0),
                                    hidesUnderline: true,
                                    isSearchable: false,
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 16.0, 16.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(0.0),
                                        ),
                                      ),
                                      unselectedWidgetColor: Color(0xFFF5F5F5),
                                    ),
                                    child: Checkbox(
                                      value: _model.statusValue ??= true,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.statusValue = newValue!);
                                      },
                                      activeColor:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      'h49cj7b8' /* Status */,
                                    ),
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 16.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ADD_MATERIAL_CREATE_MATERIAL_BTN_ON_TAP');

                              final materialCreateData = {
                                ...createMaterialRecordData(
                                  name: _model.nameController.text,
                                  description:
                                      _model.descriptionController.text,
                                  status: _model.statusValue,
                                  price: double.tryParse(
                                      _model.priceController.text),
                                  unitOfMeasure:
                                      addUserFormUnitOfMeasureRecord!.reference,
                                  unitOfMeasureName:
                                      _model.unitOfMeasureSelectValue,
                                  createdBy: currentUserReference,
                                  type:
                                      parentColumnMaterialTypeRecord!.reference,
                                ),
                                'created_date': FieldValue.serverTimestamp(),
                              };
                              await MaterialRecord.collection
                                  .doc()
                                  .set(materialCreateData);
                              context.pop();
                            },
                            text: FFLocalizations.of(context).getText(
                              'g7b2omyd' /* Create Material */,
                            ),
                            options: FFButtonOptions(
                              width: 270.0,
                              height: 50.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
