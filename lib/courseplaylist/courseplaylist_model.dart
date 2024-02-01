import '/flutter_flow/flutter_flow_util.dart';
import 'courseplaylist_widget.dart' show CourseplaylistWidget;
import 'package:flutter/material.dart';

class CourseplaylistModel extends FlutterFlowModel<CourseplaylistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
