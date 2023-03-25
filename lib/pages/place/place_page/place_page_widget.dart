import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'place_page_model.dart';
export 'place_page_model.dart';

class PlacePageWidget extends StatefulWidget {
  const PlacePageWidget({Key? key}) : super(key: key);

  @override
  _PlacePageWidgetState createState() => _PlacePageWidgetState();
}

class _PlacePageWidgetState extends State<PlacePageWidget> {
  late PlacePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlacePageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'PlacePage'});
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
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<MaterialRecord> placePageMaterialRecordList = snapshot.data!;
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
                      'Materials',
                      style: FlutterFlowTheme.of(context).title1,
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 10.0, 0.0, 0.0),
                    child: Text(
                      'List all the materials availables',
                      style: FlutterFlowTheme.of(context).subtitle2,
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
                                      placePageMaterialRecordList.toList();
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
                                              label: 'Delete',
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .customColor3,
                                              icon: Icons.delete,
                                              onPressed: (_) async {
                                                logFirebaseEvent(
                                                    'PLACE_SlidableActionWidget_l1ux34xe_ON_T');
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
                                                .title3,
                                          ),
                                          subtitle: Text(
                                            '${materialsItem.unitOfMeasureName} -  ${materialsItem.description}',
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2,
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
                        logFirebaseEvent(
                            'PLACE_PAGE_PAGE_AddMaterialButton_ON_TAP');

                        context.pushNamed('AddMaterialPage');
                      },
                      text: 'New Material',
                      options: FFButtonOptions(
                        width: 130.0,
                        height: 40.0,
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
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
