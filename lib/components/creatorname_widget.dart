import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'creatorname_model.dart';
export 'creatorname_model.dart';

class CreatornameWidget extends StatefulWidget {
  const CreatornameWidget({super.key});

  @override
  State<CreatornameWidget> createState() => _CreatornameWidgetState();
}

class _CreatornameWidgetState extends State<CreatornameWidget> {
  late CreatornameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreatornameModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(-1.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  'Created by ',
                  style: FlutterFlowTheme.of(context).labelSmall,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                child: Text(
                  'Kristian D’Souza',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
