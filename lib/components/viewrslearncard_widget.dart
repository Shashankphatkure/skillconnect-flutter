import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'viewrslearncard_model.dart';
export 'viewrslearncard_model.dart';

class ViewrslearncardWidget extends StatefulWidget {
  const ViewrslearncardWidget({super.key});

  @override
  State<ViewrslearncardWidget> createState() => _ViewrslearncardWidgetState();
}

class _ViewrslearncardWidgetState extends State<ViewrslearncardWidget> {
  late ViewrslearncardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewrslearncardModel());
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
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
              child: Text(
                'Crash Course Electronics Design ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Text(
              'Ayesshhs Khemka',
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 10.0,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '4.0',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 10.0,
                      ),
                ),
                RatingBar.builder(
                  onRatingUpdate: (newValue) =>
                      setState(() => _model.ratingBarValue = newValue),
                  itemBuilder: (context, index) => Icon(
                    Icons.star_rounded,
                    color: FlutterFlowTheme.of(context).tertiary,
                  ),
                  direction: Axis.horizontal,
                  initialRating: _model.ratingBarValue ??= 4.0,
                  unratedColor: FlutterFlowTheme.of(context).accent3,
                  itemCount: 5,
                  itemSize: 10.0,
                  glowColor: FlutterFlowTheme.of(context).tertiary,
                ),
                Text(
                  '(17,999)',
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 10.0,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
