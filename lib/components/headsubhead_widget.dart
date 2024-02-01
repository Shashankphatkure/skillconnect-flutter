import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'headsubhead_model.dart';
export 'headsubhead_model.dart';

class HeadsubheadWidget extends StatefulWidget {
  const HeadsubheadWidget({super.key});

  @override
  State<HeadsubheadWidget> createState() => _HeadsubheadWidgetState();
}

class _HeadsubheadWidgetState extends State<HeadsubheadWidget> {
  late HeadsubheadModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeadsubheadModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Curriculum',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  ' Two sections | 8 lectures | 0h 52m total length',
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
