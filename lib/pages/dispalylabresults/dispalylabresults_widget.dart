import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dispalylabresults_model.dart';
export 'dispalylabresults_model.dart';

class DispalylabresultsWidget extends StatefulWidget {
  const DispalylabresultsWidget({super.key});

  @override
  State<DispalylabresultsWidget> createState() =>
      _DispalylabresultsWidgetState();
}

class _DispalylabresultsWidgetState extends State<DispalylabresultsWidget> {
  late DispalylabresultsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DispalylabresultsModel());

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
        backgroundColor: const Color(0xFFF6F6F6),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primary,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.12, -1.13),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 0.0, 6.0),
                      child: Text(
                        'Laboratory Results ',
                        style: GoogleFonts.getFont(
                          'Open Sans',
                          fontWeight: FontWeight.w600,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.47, -0.35),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                      child: Text(
                        currentUserEmail,
                        style: GoogleFonts.getFont(
                          'Open Sans',
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: AlignmentDirectional(-0.88, -0.06),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(50.0, 0.0, 0.0, 30.0),
                      child: FaIcon(
                        FontAwesomeIcons.flask,
                        color: Color(0xFFF6F5F3),
                        size: 35.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-0.99, -0.53),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(5.0, 65.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xFFF6F5F3),
                          size: 24.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
              titlePadding:
                  const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 0.0, 0.0),
            ),
            elevation: 4.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 394.0,
                    height: 29.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF425CB4),
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: StreamBuilder<List<LabResultsRecord>>(
                      stream: queryLabResultsRecord(
                        queryBuilder: (labResultsRecord) =>
                            labResultsRecord.where(
                          'email',
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
                        List<LabResultsRecord> listViewLabResultsRecordList =
                            snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewLabResultsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewLabResultsRecord =
                                listViewLabResultsRecordList[listViewIndex];
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 360.0,
                                  height: 43.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFD0E3FF),
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(0.0),
                                      topLeft: Radius.circular(6.0),
                                      topRight: Radius.circular(6.0),
                                    ),
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  30.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              listViewLabResultsRecord.date
                                                  ?.toString(),
                                              'date',
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.date_range_rounded,
                                            color: Colors.black,
                                            size: 20.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 20.0),
                                  child: Container(
                                    width: 360.0,
                                    height: 43.0,
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF7096D1),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(6.0),
                                        bottomRight: Radius.circular(6.0),
                                        topLeft: Radius.circular(0.0),
                                        topRight: Radius.circular(0.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            listViewLabResultsRecord.test,
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    270.0, 0.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.testresults =
                                                    await LabResultsRecord
                                                        .getDocumentOnce(
                                                            listViewLabResultsRecord
                                                                .reference);

                                                setState(() {});
                                              },
                                              child: FaIcon(
                                                FontAwesomeIcons.fileDownload,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                size: 28.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.3,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 30.0),
                                    child: Container(
                                      width: 391.0,
                                      height: 5.0,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF7096D1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
      ),
    );
  }
}
