import '/components/internship_widget.dart';
import '/components/jobcardhp_widget.dart';
import '/components/viewcard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'skillconnecthomepage_widget.dart' show SkillconnecthomepageWidget;
import 'package:flutter/material.dart';

class SkillconnecthomepageModel
    extends FlutterFlowModel<SkillconnecthomepageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue1;
  FormFieldController<List<String>>? choiceChipsValueController1;
  // Model for viewcard component.
  late ViewcardModel viewcardModel1;
  // Model for viewcard component.
  late ViewcardModel viewcardModel2;
  // Model for viewcard component.
  late ViewcardModel viewcardModel3;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue2;
  FormFieldController<List<String>>? choiceChipsValueController2;
  // Model for internship component.
  late InternshipModel internshipModel1;
  // Model for internship component.
  late InternshipModel internshipModel2;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue3;
  FormFieldController<List<String>>? choiceChipsValueController3;
  // Model for jobcardhp component.
  late JobcardhpModel jobcardhpModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    viewcardModel1 = createModel(context, () => ViewcardModel());
    viewcardModel2 = createModel(context, () => ViewcardModel());
    viewcardModel3 = createModel(context, () => ViewcardModel());
    internshipModel1 = createModel(context, () => InternshipModel());
    internshipModel2 = createModel(context, () => InternshipModel());
    jobcardhpModel = createModel(context, () => JobcardhpModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    viewcardModel1.dispose();
    viewcardModel2.dispose();
    viewcardModel3.dispose();
    internshipModel1.dispose();
    internshipModel2.dispose();
    jobcardhpModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
