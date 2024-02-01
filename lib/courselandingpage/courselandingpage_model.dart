import '/components/button_widget.dart';
import '/components/creatorname_widget.dart';
import '/components/listlearn_widget.dart';
import '/components/review_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'courselandingpage_widget.dart' show CourselandingpageWidget;
import 'package:flutter/material.dart';

class CourselandingpageModel extends FlutterFlowModel<CourselandingpageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for review component.
  late ReviewModel reviewModel;
  // Model for creatorname component.
  late CreatornameModel creatornameModel;
  // Model for button component.
  late ButtonModel buttonModel;
  // Model for listlearn component.
  late ListlearnModel listlearnModel1;
  // Model for listlearn component.
  late ListlearnModel listlearnModel2;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues1;
  FormFieldController<List<String>>? checkboxGroupValueController1;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues2;
  FormFieldController<List<String>>? checkboxGroupValueController2;
  // State field(s) for CheckboxGroup widget.
  List<String>? checkboxGroupValues3;
  FormFieldController<List<String>>? checkboxGroupValueController3;
  // State field(s) for CountController widget.
  int? countControllerValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    reviewModel = createModel(context, () => ReviewModel());
    creatornameModel = createModel(context, () => CreatornameModel());
    buttonModel = createModel(context, () => ButtonModel());
    listlearnModel1 = createModel(context, () => ListlearnModel());
    listlearnModel2 = createModel(context, () => ListlearnModel());
  }

  @override
  void dispose() {
    reviewModel.dispose();
    creatornameModel.dispose();
    buttonModel.dispose();
    listlearnModel1.dispose();
    listlearnModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
