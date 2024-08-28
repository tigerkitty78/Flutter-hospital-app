import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'enterlaborotarydetails_model.dart';
export 'enterlaborotarydetails_model.dart';

class EnterlaborotarydetailsWidget extends StatefulWidget {
  const EnterlaborotarydetailsWidget({super.key});

  @override
  State<EnterlaborotarydetailsWidget> createState() =>
      _EnterlaborotarydetailsWidgetState();
}

class _EnterlaborotarydetailsWidgetState
    extends State<EnterlaborotarydetailsWidget> {
  late EnterlaborotarydetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnterlaborotarydetailsModel());

    _model.emailController ??= TextEditingController();
    _model.emailFocusNode ??= FocusNode();

    _model.testController ??= TextEditingController();
    _model.testFocusNode ??= FocusNode();

    _model.resultController ??= TextEditingController();
    _model.resultFocusNode ??= FocusNode();

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Text(
                  'Enter Laboratory Details',
                  style: GoogleFonts.getFont(
                    'Open Sans',
                    color: const Color(0xFF334EAC),
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Text(
                'Hello World',
                style: GoogleFonts.getFont(
                  'Open Sans',
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 30.0, 8.0, 10.0),
                child: TextFormField(
                  controller: _model.emailController,
                  focusNode: _model.emailFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'enter users email',
                    labelStyle: GoogleFonts.getFont(
                      'Open Sans',
                    ),
                    hintStyle: GoogleFonts.getFont(
                      'Open Sans',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFBAD6EB),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF334EAC),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFB86767),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFB86767),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: GoogleFonts.getFont(
                    'Open Sans',
                  ),
                  minLines: null,
                  validator:
                      _model.emailControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                child: TextFormField(
                  controller: _model.testController,
                  focusNode: _model.testFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'enter the test',
                    labelStyle: GoogleFonts.getFont(
                      'Open Sans',
                    ),
                    hintStyle: GoogleFonts.getFont(
                      'Open Sans',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFBAD6EB),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF334EAC),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFB86767),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFB86767),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: GoogleFonts.getFont(
                    'Open Sans',
                  ),
                  minLines: null,
                  validator:
                      _model.testControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 10.0),
                child: TextFormField(
                  controller: _model.resultController,
                  focusNode: _model.resultFocusNode,
                  autofocus: true,
                  obscureText: false,
                  decoration: InputDecoration(
                    labelText: 'enter the results',
                    labelStyle: GoogleFonts.getFont(
                      'Open Sans',
                    ),
                    hintStyle: GoogleFonts.getFont(
                      'Open Sans',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFBAD6EB),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFF425CB4),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFB86767),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color(0xFFB86767),
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  style: GoogleFonts.getFont(
                    'Open Sans',
                  ),
                  minLines: null,
                  validator:
                      _model.resultControllerValidator.asValidator(context),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await LabResultsRecord.createDoc(currentUserReference!)
                        .set(createLabResultsRecordData(
                      test: _model.testController.text,
                      results: _model.resultController.text,
                      email: _model.emailController.text,
                    ));
                  },
                  child: Container(
                    width: 231.0,
                    height: 54.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF334EAC),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'submit details',
                        style: GoogleFonts.getFont(
                          'Open Sans',
                          color: const Color(0xFFF7F2EB),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
