import '/components/freqreminder_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lrngnotification_widget.dart' show LrngnotificationWidget;
import 'package:flutter/material.dart';

class LrngnotificationModel extends FlutterFlowModel<LrngnotificationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for SwitchListTile widget.
  bool? switchListTileValue;
  // Model for freqreminder component.
  late FreqreminderModel freqreminderModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    freqreminderModel = createModel(context, () => FreqreminderModel());
  }

  @override
  void dispose() {
    freqreminderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
