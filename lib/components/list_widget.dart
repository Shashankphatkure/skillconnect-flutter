import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_model.dart';
export 'list_model.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({super.key});

  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  late ListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 1.0),
            child: Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.0,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    offset: const Offset(0.0, 1.0),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 8.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'List Item',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.checkboxValue1 ??= true,
                        onChanged: (newValue) async {
                          setState(() => _model.checkboxValue1 = newValue!);
                        },
                        activeColor: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 1.0),
            child: Container(
              width: 100.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 0.0,
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    offset: const Offset(0.0, 1.0),
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 8.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'List Item',
                          style: FlutterFlowTheme.of(context).bodyMedium,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Theme(
                        data: ThemeData(
                          checkboxTheme: CheckboxThemeData(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                          ),
                          unselectedWidgetColor:
                              FlutterFlowTheme.of(context).secondaryText,
                        ),
                        child: Checkbox(
                          value: _model.checkboxValue2 ??= true,
                          onChanged: (newValue) async {
                            setState(() => _model.checkboxValue2 = newValue!);
                          },
                          activeColor: FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
