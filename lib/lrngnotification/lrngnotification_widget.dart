import '/components/freqreminder_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'lrngnotification_model.dart';
export 'lrngnotification_model.dart';

class LrngnotificationWidget extends StatefulWidget {
  const LrngnotificationWidget({super.key});

  @override
  State<LrngnotificationWidget> createState() => _LrngnotificationWidgetState();
}

class _LrngnotificationWidgetState extends State<LrngnotificationWidget> {
  late LrngnotificationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LrngnotificationModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30.0,
          buttonSize: 46.0,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          ' Learning Reminders',
          style: FlutterFlowTheme.of(context).headlineSmall,
        ),
        actions: const [],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    ' Set a learning reminder to help you meet your goals faster. You can change the frequency or done them of in your account settings at any time. ',
                    style: FlutterFlowTheme.of(context).labelMedium,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: SwitchListTile.adaptive(
              value: _model.switchListTileValue ??= true,
              onChanged: (newValue) async {
                setState(() => _model.switchListTileValue = newValue);
              },
              title: Text(
                'Learning reminders',
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: 'Readex Pro',
                      lineHeight: 2.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              activeColor: FlutterFlowTheme.of(context).primary,
              activeTrackColor: FlutterFlowTheme.of(context).accent1,
              dense: false,
              controlAffinity: ListTileControlAffinity.trailing,
              contentPadding:
                  const EdgeInsetsDirectional.fromSTEB(24.0, 12.0, 24.0, 12.0),
            ),
          ),
          wrapWithModel(
            model: _model.freqreminderModel,
            updateCallback: () => setState(() {}),
            child: const FreqreminderWidget(),
          ),
        ],
      ),
    );
  }
}
