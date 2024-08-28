import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'appointmentpage_widget.dart' show AppointmentpageWidget;
import 'package:flutter/material.dart';

class AppointmentpageModel extends FlutterFlowModel<AppointmentpageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  String? _fullNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter the patients full name.';
    }

    return null;
  }

  // State field(s) for age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageController;
  String? Function(BuildContext, String?)? ageControllerValidator;
  // State field(s) for contactNo widget.
  FocusNode? contactNoFocusNode;
  TextEditingController? contactNoController;
  String? Function(BuildContext, String?)? contactNoControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionController;
  String? Function(BuildContext, String?)? descriptionControllerValidator;
  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    fullNameControllerValidator = _fullNameControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameController?.dispose();

    ageFocusNode?.dispose();
    ageController?.dispose();

    contactNoFocusNode?.dispose();
    contactNoController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionController?.dispose();
  }
}
