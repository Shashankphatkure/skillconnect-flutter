import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'topcoursecard_model.dart';
export 'topcoursecard_model.dart';

class TopcoursecardWidget extends StatefulWidget {
  const TopcoursecardWidget({super.key});

  @override
  State<TopcoursecardWidget> createState() => _TopcoursecardWidgetState();
}

class _TopcoursecardWidgetState extends State<TopcoursecardWidget> {
  late TopcoursecardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopcoursecardModel());
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
        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
        child: Container(
          width: 220.0,
          height: 233.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Wrap(
            spacing: 0.0,
            runSpacing: 0.0,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.start,
            direction: Axis.horizontal,
            runAlignment: WrapAlignment.start,
            verticalDirection: VerticalDirection.down,
            clipBehavior: Clip.none,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.network(
                      'https://images.unsplash.com/photo-1501504905252-473c47e087f8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxjb3Vyc2V8ZW58MHx8fHwxNzA2Nzg1MTM2fDA&ixlib=rb-4.0.3&q=80&w=1080',
                      width: 300.0,
                      height: 120.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Crash Course Electronics and PCB Design ',
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
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 5.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            '4.0',
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 10.0,
                                ),
                          ),
                          RatingBar.builder(
                            onRatingUpdate: (newValue) => setState(
                                () => _model.ratingBarValue = newValue),
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
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Bestseller',
                        options: FFButtonOptions(
                          height: 20.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFE1E786),
                          textStyle: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 10.0,
                              ),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
