import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'displayappointment_model.dart';
export 'displayappointment_model.dart';

class DisplayappointmentWidget extends StatefulWidget {
  const DisplayappointmentWidget({super.key});

  @override
  State<DisplayappointmentWidget> createState() =>
      _DisplayappointmentWidgetState();
}

class _DisplayappointmentWidgetState extends State<DisplayappointmentWidget> {
  late DisplayappointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DisplayappointmentModel());

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
          backgroundColor: const Color(0xFF425CB4),
          automaticallyImplyLeading: true,
          leading: InkWell(
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
          title: Text(
            'Upcoming Appointments',
            style: GoogleFonts.getFont(
              'Open Sans',
              color: const Color(0xFFF6F5F3),
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 4.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
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
                        listViewAppointmentbookRecordList = snapshot.data!;
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAppointmentbookRecordList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewAppointmentbookRecord =
                            listViewAppointmentbookRecordList[listViewIndex];
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 25.0),
                          child: Container(
                            width: 100.0,
                            height: 112.0,
                            decoration: BoxDecoration(
                              color: const Color(0xFFBAD6EB),
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: const Color(0xFF334EAC),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0.39, -0.43),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (listViewAppointmentbookRecord.day ==
                                              getCurrentTimestamp
                                          ? true
                                          : true) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title:
                                                  const Text('Upcoming appointment'),
                                              content: Text(
                                                  listViewAppointmentbookRecord
                                                      .day!
                                                      .toString()),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: const Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      }
                                    },
                                    child: Text(
                                      valueOrDefault<String>(
                                        listViewAppointmentbookRecord.day
                                            ?.toString(),
                                        'date',
                                      ),
                                      style: GoogleFonts.getFont(
                                        'Open Sans',
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.9, -0.43),
                                  child: Text(
                                    valueOrDefault<String>(
                                      listViewAppointmentbookRecord.docid
                                          .toString(),
                                      'doc ID',
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Open Sans',
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 1.25),
                                  child: Container(
                                    width: 379.0,
                                    height: 53.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF7096D1),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 15.0, 0.0, 0.0),
                                      child: Text(
                                        listViewAppointmentbookRecord.uSymptoms,
                                        style: GoogleFonts.getFont(
                                          'Open Sans',
                                          color: const Color(0xFFF2F0DE),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(-0.37, -0.43),
                                  child: Text(
                                    listViewAppointmentbookRecord.docName,
                                    style: GoogleFonts.getFont(
                                      'Open Sans',
                                    ),
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}
