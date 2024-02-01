import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'topcoursesheading_model.dart';
export 'topcoursesheading_model.dart';

class TopcoursesheadingWidget extends StatefulWidget {
  const TopcoursesheadingWidget({super.key});

  @override
  State<TopcoursesheadingWidget> createState() =>
      _TopcoursesheadingWidgetState();
}

class _TopcoursesheadingWidgetState extends State<TopcoursesheadingWidget> {
  late TopcoursesheadingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopcoursesheadingModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, -1.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
        child: GradientText(
          'Top courses in IT & Software ',
          style: FlutterFlowTheme.of(context).titleLarge,
          colors: [
            FlutterFlowTheme.of(context).primary,
            FlutterFlowTheme.of(context).primaryText
          ],
          gradientDirection: GradientDirection.ltr,
          gradientType: GradientType.linear,
        ),
      ),
    );
  }
}
