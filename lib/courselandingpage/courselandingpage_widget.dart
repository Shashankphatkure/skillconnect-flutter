import '/components/button_widget.dart';
import '/components/creatorname_widget.dart';
import '/components/listlearn_widget.dart';
import '/components/review_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'courselandingpage_model.dart';
export 'courselandingpage_model.dart';

class CourselandingpageWidget extends StatefulWidget {
  const CourselandingpageWidget({super.key});

  @override
  State<CourselandingpageWidget> createState() =>
      _CourselandingpageWidgetState();
}

class _CourselandingpageWidgetState extends State<CourselandingpageWidget> {
  late CourselandingpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourselandingpageModel());
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

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 30.0,
            ),
            onPressed: () {
              print('IconButton pressed ...');
            },
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
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
                    const Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: FlutterFlowVideoPlayer(
                        path:
                            'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
                        videoType: VideoType.network,
                        autoPlay: false,
                        looping: true,
                        showControls: true,
                        allowFullScreen: true,
                        allowPlaybackSpeedMenu: false,
                      ),
                    ),
                    Container(
                      height: 200.0,
                      decoration: const BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 0.0, 0.0),
                              child: Text(
                                'Ui/Ux Designer course ',
                                style:
                                    FlutterFlowTheme.of(context).headlineMedium,
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.reviewModel,
                            updateCallback: () => setState(() {}),
                            child: const ReviewWidget(),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Text(
                                '(77 ratings) 576 students ',
                                style: FlutterFlowTheme.of(context).labelSmall,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 5.0),
                              child: wrapWithModel(
                                model: _model.creatornameModel,
                                updateCallback: () => setState(() {}),
                                child: const CreatornameWidget(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 5.0, 0.0),
                                          child: Icon(
                                            Icons.update_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, 0.0),
                                        child: Text(
                                          'Last updated 4 Jan 2024',
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Icon(
                                        Icons.language_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'English',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Icon(
                                        Icons.title,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Text(
                                      'Updated ',
                                      style: FlutterFlowTheme.of(context)
                                          .labelSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Opacity(
                      opacity: 0.2,
                      child: Divider(
                        height: 20.0,
                        indent: 16.0,
                        endIndent: 16.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  '₹ 499',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Open Sans',
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '₹ 999',
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Roboto',
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Icon(
                                          Icons.timer_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Text(
                                        '50% of - 4 hours left at the price',
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontWeight: FontWeight.w800,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          wrapWithModel(
                            model: _model.buttonModel,
                            updateCallback: () => setState(() {}),
                            child: const ButtonWidget(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 16.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Add to wishlist',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 50.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).info,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          Divider(
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).accent4,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 5.0,
                        child: Container(
                          width: 387.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                FlutterFlowTheme.of(context).accent4,
                                FlutterFlowTheme.of(context).info
                              ],
                              stops: const [0.0, 1.0],
                              begin: const AlignmentDirectional(0.0, -1.0),
                              end: const AlignmentDirectional(0, 1.0),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  'What you’ll learn ',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.listlearnModel1,
                                updateCallback: () => setState(() {}),
                                child: const ListlearnWidget(),
                              ),
                              wrapWithModel(
                                model: _model.listlearnModel2,
                                updateCallback: () => setState(() {}),
                                child: const ListlearnWidget(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Description',
                        style: FlutterFlowTheme.of(context).labelMedium,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 0.0),
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                        style: FlutterFlowTheme.of(context).bodyLarge,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowCheckboxGroup(
                            options: const [
                              'Organic Whole milk',
                              'Almond Milk',
                              'Oat Milk'
                            ],
                            onChanged: (val) => setState(
                                () => _model.checkboxGroupValues1 = val),
                            controller: _model.checkboxGroupValueController1 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: Colors.white,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            checkboxBorderRadius: BorderRadius.circular(4.0),
                            initialized: _model.checkboxGroupValues1 != null,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Type of Milk',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                          ),
                          FlutterFlowCheckboxGroup(
                            options: const ['12oz', '16oz'],
                            onChanged: (val) => setState(
                                () => _model.checkboxGroupValues2 = val),
                            controller: _model.checkboxGroupValueController2 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: Colors.white,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            checkboxBorderRadius: BorderRadius.circular(4.0),
                            initialized: _model.checkboxGroupValues2 != null,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Ice / Hot',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                          ),
                          FlutterFlowCheckboxGroup(
                            options: const ['Iced', 'Hot'],
                            onChanged: (val) => setState(
                                () => _model.checkboxGroupValues3 = val),
                            controller: _model.checkboxGroupValueController3 ??=
                                FormFieldController<List<String>>(
                              [],
                            ),
                            activeColor: FlutterFlowTheme.of(context).primary,
                            checkColor: Colors.white,
                            checkboxBorderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            textStyle: FlutterFlowTheme.of(context).bodyMedium,
                            itemPadding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 0.0, 0.0),
                            checkboxBorderRadius: BorderRadius.circular(4.0),
                            initialized: _model.checkboxGroupValues3 != null,
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 12.0),
                            child: Container(
                              width: double.infinity,
                              height: 40.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              alignment: const AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Quanity',
                                style: FlutterFlowTheme.of(context).labelMedium,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 24.0),
                            child: Container(
                              width: 160.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(25.0),
                                shape: BoxShape.rectangle,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: FlutterFlowCountController(
                                decrementIconBuilder: (enabled) => Icon(
                                  Icons.remove_rounded,
                                  color: enabled
                                      ? FlutterFlowTheme.of(context)
                                          .secondaryText
                                      : FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                incrementIconBuilder: (enabled) => Icon(
                                  Icons.add_rounded,
                                  color: enabled
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                  size: 20.0,
                                ),
                                countBuilder: (count) => Text(
                                  count.toString(),
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall,
                                ),
                                count: _model.countControllerValue ??= 1,
                                updateCount: (count) => setState(
                                    () => _model.countControllerValue = count),
                                stepSize: 1,
                                minimum: 1,
                                maximum: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Hello World',
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
