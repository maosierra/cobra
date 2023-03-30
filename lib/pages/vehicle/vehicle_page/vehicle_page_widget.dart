import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'vehicle_page_model.dart';
export 'vehicle_page_model.dart';

class VehiclePageWidget extends StatefulWidget {
  const VehiclePageWidget({Key? key}) : super(key: key);

  @override
  _VehiclePageWidgetState createState() => _VehiclePageWidgetState();
}

class _VehiclePageWidgetState extends State<VehiclePageWidget> {
  late VehiclePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VehiclePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'VehiclePage'});
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<VehiculeRecord>>(
      stream: queryVehiculeRecord(
        queryBuilder: (vehiculeRecord) =>
            vehiculeRecord.where('status', isEqualTo: true).orderBy('name'),
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
        List<VehiculeRecord> vehiclePageVehiculeRecordList = snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'dcxwfi1o' /* Vehicle */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        '85bg9jp1' /* List all the vehicle available... */,
                      ),
                      style: FlutterFlowTheme.of(context).titleSmall,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          16.0, 16.0, 16.0, 16.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(12.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Builder(
                                builder: (context) {
                                  final vehicules =
                                      vehiclePageVehiculeRecordList
                                          .map((e) => e)
                                          .toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: vehicules.length,
                                    itemBuilder: (context, vehiculesIndex) {
                                      final vehiculesItem =
                                          vehicules[vehiculesIndex];
                                      return Slidable(
                                        endActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          extentRatio: 0.25,
                                          children: [
                                            SlidableAction(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                'bn59fd26' /* Delete */,
                                              ),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                              icon: Icons.delete,
                                              onPressed: (_) {
                                                print(
                                                    'SlidableActionWidget pressed ...');
                                              },
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          title: Text(
                                            vehiculesItem.name!,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall,
                                          ),
                                          subtitle: Text(
                                            '${vehiculesItem.description} - ${vehiculesItem.capacity?.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall,
                                          ),
                                          trailing: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xFF303030),
                                            size: 20.0,
                                          ),
                                          tileColor: Color(0xFFF5F5F5),
                                          dense: false,
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 90.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        logFirebaseEvent('VEHICLE_AddVehicleButton_ON_TAP');

                        context.pushNamed('AddVehiculePage');
                      },
                      text: FFLocalizations.of(context).getText(
                        'x8wv79cc' /* New Vehicle */,
                      ),
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        elevation: 2.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
