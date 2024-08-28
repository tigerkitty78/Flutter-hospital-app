import '/flutter_flow/flutter_flow_util.dart';
import 'doc_login_widget.dart' show DocLoginWidget;
import 'package:flutter/material.dart';

class DocLoginModel extends FlutterFlowModel<DocLoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for docname widget.
  FocusNode? docnameFocusNode;
  TextEditingController? docnameController;
  String? Function(BuildContext, String?)? docnameControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailController;
  late bool emailVisibility;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for ID widget.
  FocusNode? idFocusNode;
  TextEditingController? idController;
  late bool idVisibility;
  String? Function(BuildContext, String?)? idControllerValidator;
  // State field(s) for TITLE widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  late bool titleVisibility;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for CATEGORY widget.
  FocusNode? categoryFocusNode;
  TextEditingController? categoryController;
  late bool categoryVisibility;
  String? Function(BuildContext, String?)? categoryControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  @override
  void initState(BuildContext context) {
    emailVisibility = false;
    idVisibility = false;
    titleVisibility = false;
    categoryVisibility = false;
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    docnameFocusNode?.dispose();
    docnameController?.dispose();

    emailFocusNode?.dispose();
    emailController?.dispose();

    idFocusNode?.dispose();
    idController?.dispose();

    titleFocusNode?.dispose();
    titleController?.dispose();

    categoryFocusNode?.dispose();
    categoryController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressController?.dispose();

    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }
}
