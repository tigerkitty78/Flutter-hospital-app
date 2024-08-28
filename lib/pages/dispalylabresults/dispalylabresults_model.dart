import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dispalylabresults_widget.dart' show DispalylabresultsWidget;
import 'package:flutter/material.dart';

class DispalylabresultsModel extends FlutterFlowModel<DispalylabresultsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in Icon widget.
  LabResultsRecord? testresults;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
