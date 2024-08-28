import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appointmentbook_model.dart';
export 'appointmentbook_model.dart';

class AppointmentbookWidget extends StatefulWidget {
  const AppointmentbookWidget({super.key});

  @override
  State<AppointmentbookWidget> createState() => _AppointmentbookWidgetState();
}

class _AppointmentbookWidgetState extends State<AppointmentbookWidget> {
  late AppointmentbookModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppointmentbookModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
        backgroundColor: const Color(0xFFEDF1F6),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Enter doctor ID',
                      labelStyle:
                          FlutterFlowTheme.of(context).labelMedium.override(
                                fontFamily: 'Inter',
                                letterSpacing: 0.0,
                              ),
                      hintStyle: GoogleFonts.getFont(
                        'Open Sans',
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFFFFF9F0),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xFF425CB4),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xC5BE8082),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          color: Color(0xC5BE8082),
                          width: 2.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          letterSpacing: 0.0,
                        ),
                    minLines: null,
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await AppointmentbookRecord.collection
                          .doc()
                          .set(createAppointmentbookRecordData(
                            docid: int.tryParse(_model.textController.text),
                          ));
                    },
                    child: Container(
                      width: 227.0,
                      height: 54.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF7096D1),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'See available appointments',
                          style: GoogleFonts.getFont(
                            'Open Sans',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                StreamBuilder<List<Appoint2Record>>(
                  stream: queryAppoint2Record(
                    queryBuilder: (appoint2Record) => appoint2Record.where(
                      'did',
                      isEqualTo: 1,
                    ),
                    singleRecord: true,
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
                    List<Appoint2Record> listViewAppoint2RecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final listViewAppoint2Record =
                        listViewAppoint2RecordList.isNotEmpty
                            ? listViewAppoint2RecordList.first
                            : null;
                    return ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Container(
                            width: 115.0,
                            height: 50.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF7096D1),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  listViewAppoint2Record?.d1?.toString(),
                                  '1',
                                ),
                                style: GoogleFonts.getFont(
                                  'Open Sans',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                StreamBuilder<List<Appoint2Record>>(
                  stream: queryAppoint2Record(
                    queryBuilder: (appoint2Record) => appoint2Record.where(
                      'did',
                      isEqualTo: 2,
                    ),
                    singleRecord: true,
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
                    List<Appoint2Record> listViewAppoint2RecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final listViewAppoint2Record =
                        listViewAppoint2RecordList.isNotEmpty
                            ? listViewAppoint2RecordList.first
                            : null;
                    return ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Container(
                            width: 115.0,
                            height: 50.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF7096D1),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  listViewAppoint2Record?.d2?.toString(),
                                  '2',
                                ),
                                style: GoogleFonts.getFont(
                                  'Open Sans',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                StreamBuilder<List<Appoint2Record>>(
                  stream: queryAppoint2Record(
                    queryBuilder: (appoint2Record) => appoint2Record.where(
                      'did',
                      isEqualTo: 3,
                    ),
                    singleRecord: true,
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
                    List<Appoint2Record> listViewAppoint2RecordList =
                        snapshot.data!;
                    // Return an empty Container when the item does not exist.
                    if (snapshot.data!.isEmpty) {
                      return Container();
                    }
                    final listViewAppoint2Record =
                        listViewAppoint2RecordList.isNotEmpty
                            ? listViewAppoint2RecordList.first
                            : null;
                    return ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: Container(
                            width: 115.0,
                            height: 50.0,
                            decoration: const BoxDecoration(
                              color: Color(0xFF7096D1),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  listViewAppoint2Record?.d3?.toString(),
                                  '3',
                                ),
                                style: GoogleFonts.getFont(
                                  'Open Sans',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
