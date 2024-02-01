import '/components/topcoursecard_widget.dart';
import '/components/topcoursesheading_widget.dart';
import '/components/viewcard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topcoursesheading component.
  late TopcoursesheadingModel topcoursesheadingModel1;
  // Model for topcoursecard component.
  late TopcoursecardModel topcoursecardModel1;
  // Model for topcoursecard component.
  late TopcoursecardModel topcoursecardModel2;
  // Model for topcoursesheading component.
  late TopcoursesheadingModel topcoursesheadingModel2;
  // Model for topcoursecard component.
  late TopcoursecardModel topcoursecardModel3;
  // Model for topcoursecard component.
  late TopcoursecardModel topcoursecardModel4;
  // Model for viewcard component.
  late ViewcardModel viewcardModel1;
  // Model for viewcard component.
  late ViewcardModel viewcardModel2;
  // Model for viewcard component.
  late ViewcardModel viewcardModel3;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topcoursesheadingModel1 =
        createModel(context, () => TopcoursesheadingModel());
    topcoursecardModel1 = createModel(context, () => TopcoursecardModel());
    topcoursecardModel2 = createModel(context, () => TopcoursecardModel());
    topcoursesheadingModel2 =
        createModel(context, () => TopcoursesheadingModel());
    topcoursecardModel3 = createModel(context, () => TopcoursecardModel());
    topcoursecardModel4 = createModel(context, () => TopcoursecardModel());
    viewcardModel1 = createModel(context, () => ViewcardModel());
    viewcardModel2 = createModel(context, () => ViewcardModel());
    viewcardModel3 = createModel(context, () => ViewcardModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topcoursesheadingModel1.dispose();
    topcoursecardModel1.dispose();
    topcoursecardModel2.dispose();
    topcoursesheadingModel2.dispose();
    topcoursecardModel3.dispose();
    topcoursecardModel4.dispose();
    viewcardModel1.dispose();
    viewcardModel2.dispose();
    viewcardModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
