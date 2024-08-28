import '/flutter_flow/flutter_flow_util.dart';
import 'usersprofile_widget.dart' show UsersprofileWidget;
import 'package:flutter/material.dart';

class UsersprofileModel extends FlutterFlowModel<UsersprofileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
