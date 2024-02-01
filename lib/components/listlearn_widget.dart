import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'listlearn_model.dart';
export 'listlearn_model.dart';

class ListlearnWidget extends StatefulWidget {
  const ListlearnWidget({super.key});

  @override
  State<ListlearnWidget> createState() => _ListlearnWidgetState();
}

class _ListlearnWidgetState extends State<ListlearnWidget> {
  late ListlearnModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListlearnModel());
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
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Icon(
                Icons.check_rounded,
                color: Color(0xFF57636C),
                size: 24.0,
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Introduction to Ui/Ux concepts ',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
