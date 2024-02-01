import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'viewcard_model.dart';
export 'viewcard_model.dart';

class ViewcardWidget extends StatefulWidget {
  const ViewcardWidget({super.key});

  @override
  State<ViewcardWidget> createState() => _ViewcardWidgetState();
}

class _ViewcardWidgetState extends State<ViewcardWidget> {
  late ViewcardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewcardModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(4.0),
            child: Image.network(
              'https://picsum.photos/seed/163/600',
              width: 300.0,
              height: 80.0,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, 0.0),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(4.0, 5.0, 0.0, 0.0),
                child: Text(
                  'Crash Course Electronics ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
          ],
        ),
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
            child: Text(
              'Ayesshhs Khemka',
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 10.0,
                  ),
            ),
          ),
        ),
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 5.0, 0.0, 5.0),
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
        ),
        Align(
          alignment: const AlignmentDirectional(-1.0, 0.0),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: 'Bestseller',
              options: FFButtonOptions(
                height: 20.0,
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFFE1E786),
                textStyle: FlutterFlowTheme.of(context).labelSmall.override(
                      fontFamily: 'Readex Pro',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 10.0,
                    ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(0.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
