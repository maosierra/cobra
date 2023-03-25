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
import 'add_vehicule_page_model.dart';
export 'add_vehicule_page_model.dart';

class AddVehiculePageWidget extends StatefulWidget {
  const AddVehiculePageWidget({Key? key}) : super(key: key);

  @override
  _AddVehiculePageWidgetState createState() => _AddVehiculePageWidgetState();
}

class _AddVehiculePageWidgetState extends State<AddVehiculePageWidget> {
  late AddVehiculePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddVehiculePageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'AddVehiculePage'});
    _model.vehiculeNameController ??= TextEditingController();
    _model.capacityController ??= TextEditingController();
    _model.driverNameController ??= TextEditingController();
    _model.descriptionController ??= TextEditingController();
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
          'New Vehicule',
          style: FlutterFlowTheme.of(context).title2,
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
                logFirebaseEvent('ADD_VEHICULE_close_rounded_ICN_ON_TAP');
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
          child: StreamBuilder<List<VehiculeTypeRecord>>(
            stream: queryVehiculeTypeRecord(
              queryBuilder: (vehiculeTypeRecord) =>
                  vehiculeTypeRecord.where('name', isEqualTo: _model.typeValue),
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
                      color: FlutterFlowTheme.of(context).primaryColor,
                    ),
                  ),
                );
              }
              List<VehiculeTypeRecord> addUserFormVehiculeTypeRecordList =
                  snapshot.data!;
              // Return an empty Container when the item does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final addUserFormVehiculeTypeRecord =
                  addUserFormVehiculeTypeRecordList.isNotEmpty
                      ? addUserFormVehiculeTypeRecordList.first
                      : null;
              return Form(
                key: _model.formKey,
                autovalidateMode: AutovalidateMode.disabled,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Container(
                            width: 120.0,
                            height: 120.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/emptyState@2x.png',
                                ).image,
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 6.0,
                                  color: Color(0x3A000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  4.0, 4.0, 4.0, 4.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(120.0),
                                child: Image.network(
                                  random_data.randomImageUrl(
                                    0,
                                    0,
                                  ),
                                  width: 100.0,
                                  height: 100.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: TextFormField(
                            controller: _model.vehiculeNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            validator: _model.vehiculeNameControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: TextFormField(
                            controller: _model.capacityController,
                            textCapitalization: TextCapitalization.none,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Capacity',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.number,
                            validator: _model.capacityControllerValidator
                                .asValidator(context),
                            inputFormatters: [_model.capacityMask],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 16.0, 0.0),
                          child: TextFormField(
                            controller: _model.driverNameController,
                            textCapitalization: TextCapitalization.none,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Driver name',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            keyboardType: TextInputType.number,
                            validator: _model.driverNameControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 0.0),
                          child: StreamBuilder<List<VehiculeTypeRecord>>(
                            stream: queryVehiculeTypeRecord(
                              queryBuilder: (vehiculeTypeRecord) =>
                                  vehiculeTypeRecord
                                      .where('status', isEqualTo: true)
                                      .orderBy('name'),
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
                                          .primaryColor,
                                    ),
                                  ),
                                );
                              }
                              List<VehiculeTypeRecord>
                                  typeVehiculeTypeRecordList = snapshot.data!;
                              return FlutterFlowDropDown<String>(
                                controller: _model.typeController ??=
                                    FormFieldController<String>(null),
                                options: typeVehiculeTypeRecordList
                                    .map((e) => e.name)
                                    .withoutNulls
                                    .toList()
                                    .toList(),
                                onChanged: (val) =>
                                    setState(() => _model.typeValue = val),
                                width: double.infinity,
                                height: 60.0,
                                textStyle:
                                    FlutterFlowTheme.of(context).bodyText1,
                                hintText: 'Vehicule Type',
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
                              16.0, 16.0, 16.0, 0.0),
                          child: TextFormField(
                            controller: _model.descriptionController,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Enter description here..',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 32.0, 20.0, 12.0),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                            textAlign: TextAlign.start,
                            maxLines: 4,
                            keyboardType: TextInputType.multiline,
                            validator: _model.descriptionControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent(
                              'ADD_VEHICULE_CREATE_VEHICULE_BTN_ON_TAP');

                          final vehiculeCreateData = createVehiculeRecordData(
                            name: _model.vehiculeNameController.text,
                            description: _model.descriptionController.text,
                            capacity:
                                double.tryParse(_model.capacityController.text),
                            driverName: _model.driverNameController.text,
                            status: true,
                            type: addUserFormVehiculeTypeRecord!.reference,
                          );
                          await VehiculeRecord.collection
                              .doc()
                              .set(vehiculeCreateData);
                          context.safePop();
                        },
                        text: 'Create Vehicule',
                        options: FFButtonOptions(
                          width: 270.0,
                          height: 50.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle1.override(
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
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
