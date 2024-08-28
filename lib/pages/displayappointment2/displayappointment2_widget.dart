import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'displayappointment2_model.dart';
export 'displayappointment2_model.dart';

class Displayappointment2Widget extends StatefulWidget {
  const Displayappointment2Widget({super.key});

  @override
  State<Displayappointment2Widget> createState() =>
      _Displayappointment2WidgetState();
}

class _Displayappointment2WidgetState extends State<Displayappointment2Widget>
    with TickerProviderStateMixin {
  late Displayappointment2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Displayappointment2Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFF7F2EB),
        appBar: AppBar(
          backgroundColor: const Color(0xFF7096D1),
          iconTheme: const IconThemeData(color: Colors.white),
          automaticallyImplyLeading: true,
          actions: const [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Align(
                alignment: const Alignment(0.0, 0),
                child: TabBar(
                  labelColor: const Color(0xFF12151C),
                  unselectedLabelColor: const Color(0xFF5A5C60),
                  labelStyle: const TextStyle(),
                  unselectedLabelStyle: const TextStyle(),
                  indicatorColor: const Color(0xFF081F5C),
                  padding: const EdgeInsets.all(4.0),
                  tabs: const [
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Previous',
                    ),
                  ],
                  controller: _model.tabBarController,
                  onTap: (i) async {
                    [() async {}, () async {}][i]();
                  },
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: StreamBuilder<List<AppointmentbookRecord>>(
                            stream: queryAppointmentbookRecord(
                              queryBuilder: (appointmentbookRecord) =>
                                  appointmentbookRecord.where(
                                'u_email',
                                isEqualTo: currentUserEmail,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return const Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xFF42A1C3),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<AppointmentbookRecord>
                                  listViewAppointmentbookRecordList =
                                  snapshot.data!;
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listViewAppointmentbookRecordList.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAppointmentbookRecord =
                                      listViewAppointmentbookRecordList[
                                          listViewIndex];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 25.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 104.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0x4C8AC7FF),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: const Color(0xFF334EAC),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 0.0, 0.0),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.4, -0.64),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        50.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (listViewAppointmentbookRecord
                                                                .day ==
                                                            getCurrentTimestamp
                                                        ? true
                                                        : true) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Upcoming appointment'),
                                                            content: Text(
                                                                listViewAppointmentbookRecord
                                                                    .day!
                                                                    .toString()),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      listViewAppointmentbookRecord
                                                          .day
                                                          ?.toString(),
                                                      'date',
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.91, -0.58),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewAppointmentbookRecord
                                                      .docid
                                                      .toString(),
                                                  'doc ID',
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.29, -0.62),
                                              child: Text(
                                                listViewAppointmentbookRecord
                                                    .docName,
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.88, 0.41),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: StreamBuilder<List<AppointmentbookRecord>>(
                            stream: queryAppointmentbookRecord(
                              queryBuilder: (appointmentbookRecord) =>
                                  appointmentbookRecord.where(
                                'u_email',
                                isEqualTo: currentUserEmail,
                              ),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return const Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xFF42A1C3),
                                      ),
                                    ),
                                  ),
                                );
                              }
                              List<AppointmentbookRecord>
                                  listViewAppointmentbookRecordList =
                                  snapshot.data!;
                              return ListView.separated(
                                padding: EdgeInsets.zero,
                                shrinkWrap: true,
                                scrollDirection: Axis.vertical,
                                itemCount:
                                    listViewAppointmentbookRecordList.length,
                                separatorBuilder: (_, __) =>
                                    const SizedBox(height: 10.0),
                                itemBuilder: (context, listViewIndex) {
                                  final listViewAppointmentbookRecord =
                                      listViewAppointmentbookRecordList[
                                          listViewIndex];
                                  return Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 25.0),
                                    child: Container(
                                      width: 100.0,
                                      height: 104.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0x4C8AC7FF),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          color: const Color(0xFF334EAC),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 25.0, 0.0, 0.0),
                                        child: Stack(
                                          children: [
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.4, -0.64),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        50.0, 0.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (listViewAppointmentbookRecord
                                                                .day ==
                                                            getCurrentTimestamp
                                                        ? true
                                                        : true) {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: const Text(
                                                                'Upcoming appointment'),
                                                            content: Text(
                                                                listViewAppointmentbookRecord
                                                                    .day!
                                                                    .toString()),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    const Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                    }
                                                  },
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      listViewAppointmentbookRecord
                                                          .day
                                                          ?.toString(),
                                                      'date',
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Open Sans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.91, -0.58),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  listViewAppointmentbookRecord
                                                      .docid
                                                      .toString(),
                                                  'doc ID',
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -0.29, -0.62),
                                              child: Text(
                                                listViewAppointmentbookRecord
                                                    .docName,
                                                style: GoogleFonts.getFont(
                                                  'Open Sans',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.88, 0.41),
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 20.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
