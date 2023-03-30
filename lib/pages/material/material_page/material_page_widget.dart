import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'material_page_model.dart';
export 'material_page_model.dart';

class MaterialPageWidget extends StatefulWidget {
  const MaterialPageWidget({Key? key}) : super(key: key);

  @override
  _MaterialPageWidgetState createState() => _MaterialPageWidgetState();
}

class _MaterialPageWidgetState extends State<MaterialPageWidget> {
  late MaterialPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaterialPageModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'MaterialPage'});
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<MaterialRecord>>(
      stream: queryMaterialRecord(
        queryBuilder: (materialRecord) => materialRecord.orderBy('name'),
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
        List<MaterialRecord> materialPageMaterialRecordList = snapshot.data!;
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
                        '6oq2r0ep' /* Materials */,
                      ),
                      style: FlutterFlowTheme.of(context).displaySmall,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 0.0, 0.0),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        'djjm6x45' /* List all the materials availab... */,
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
                                  final materials =
                                      materialPageMaterialRecordList.toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: materials.length,
                                    itemBuilder: (context, materialsIndex) {
                                      final materialsItem =
                                          materials[materialsIndex];
                                      return Slidable(
                                        endActionPane: ActionPane(
                                          motion: const ScrollMotion(),
                                          extentRatio: 0.25,
                                          children: [
                                            SlidableAction(
                                              label: FFLocalizations.of(context)
                                                  .getText(
                                                '3abjv9cl' /* Delete */,
                                              ),
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                              icon: Icons.delete,
                                              onPressed: (_) async {
                                                logFirebaseEvent(
                                                    'MATERIAL_SlidableActionWidget_4gmdphjo_O');
                                                await materialsItem.reference
                                                    .delete();
                                              },
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          title: Text(
                                            materialsItem.name!,
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall,
                                          ),
                                          subtitle: Text(
                                            '${materialsItem.unitOfMeasureName} -  ${materialsItem.description}',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall,
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
                        logFirebaseEvent('MATERIAL_AddMaterialButton_ON_TAP');

                        context.pushNamed('AddMaterialPage');
                      },
                      text: FFLocalizations.of(context).getText(
                        'nu2icdp1' /* New Material */,
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
