import '/components/topcoursecard_widget.dart';
import '/components/topcoursesheading_widget.dart';
import '/components/viewcard_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).info,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(-1.0, -1.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1495465798138-718f86d1a4bc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHxzdHVkeXxlbnwwfHx8fDE3MDY3ODUxMDB8MA&ixlib=rb-4.0.3&q=80&w=1080',
                              width: 393.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Learning that fits',
                                style: FlutterFlowTheme.of(context)
                                    .headlineLarge
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 28.0,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Skill for your present (and future)',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodySmall,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: AutoSizeText(
                                'Categories ',
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, -1.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 10.0, 0.0),
                              child: Text(
                                'See all',
                                style: FlutterFlowTheme.of(context)
                                    .displaySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 15.0,
                                    ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 5.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Finance & Accounting',
                                        options: FFButtonOptions(
                                          width: 185.0,
                                          height: 45.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          iconPadding: const EdgeInsets.all(0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w800,
                                              ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 5.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Development ',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 45.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          iconPadding: const EdgeInsets.all(0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w800,
                                              ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Finance & Accounting',
                                    options: FFButtonOptions(
                                      width: 185.0,
                                      height: 45.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w800,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Finance & Accounting',
                                    options: FFButtonOptions(
                                      width: 185.0,
                                      height: 45.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w800,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Finance & Accounting',
                                    options: FFButtonOptions(
                                      width: 185.0,
                                      height: 45.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w800,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(24.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Business',
                                    options: FFButtonOptions(
                                      width: 105.0,
                                      height: 45.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w800,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'IT & Software ',
                                        options: FFButtonOptions(
                                          width: 130.0,
                                          height: 45.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          iconPadding: const EdgeInsets.all(0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w800,
                                              ),
                                          elevation: 2.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Personal Development ',
                                    options: FFButtonOptions(
                                      width: 185.0,
                                      height: 45.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 20.0, 0.0),
                                      iconPadding: const EdgeInsets.all(0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w800,
                                          ),
                                      elevation: 2.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: wrapWithModel(
                              model: _model.topcoursesheadingModel1,
                              updateCallback: () => setState(() {}),
                              child: const TopcoursesheadingWidget(),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.topcoursecardModel1,
                                updateCallback: () => setState(() {}),
                                child: const TopcoursecardWidget(),
                              ),
                              wrapWithModel(
                                model: _model.topcoursecardModel2,
                                updateCallback: () => setState(() {}),
                                child: const TopcoursecardWidget(),
                              ),
                            ],
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, -1.0),
                            child: wrapWithModel(
                              model: _model.topcoursesheadingModel2,
                              updateCallback: () => setState(() {}),
                              child: const TopcoursesheadingWidget(),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              wrapWithModel(
                                model: _model.topcoursecardModel3,
                                updateCallback: () => setState(() {}),
                                child: const TopcoursecardWidget(),
                              ),
                              wrapWithModel(
                                model: _model.topcoursecardModel4,
                                updateCallback: () => setState(() {}),
                                child: const TopcoursecardWidget(),
                              ),
                            ],
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Container(
                              width: 340.0,
                              height: 170.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, -1.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'Top companies trust Skillconnect',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.network(
                                                'https://images.unsplash.com/photo-1516876437184-593fda40c7ce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNXx8bG9nb3xlbnwwfHx8fDE3MDY3NTU5Mzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                width: 80.0,
                                                height: 50.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.network(
                                                'https://images.unsplash.com/photo-1601158935942-52255782d322?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMHx8bG9nb3xlbnwwfHx8fDE3MDY3NTU5Mzl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                                width: 80.0,
                                                height: 50.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.network(
                                                'https://images.unsplash.com/photo-1599305445671-ac291c95aaa9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxfHxsb2dvfGVufDB8fHx8MTcwNjc1NTkzOXww&ixlib=rb-4.0.3&q=80&w=1080',
                                                width: 80.0,
                                                height: 50.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, -1.0),
                                        child: Text(
                                          'Try Skillconnect Business',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: GradientText(
                                'Learner’s are viewing ',
                                style: FlutterFlowTheme.of(context).titleLarge,
                                colors: [
                                  FlutterFlowTheme.of(context).primary,
                                  FlutterFlowTheme.of(context).primaryText
                                ],
                                gradientDirection: GradientDirection.ltr,
                                gradientType: GradientType.linear,
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 393.0,
                                height: 189.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.viewcardModel1,
                                          updateCallback: () => setState(() {}),
                                          child: const ViewcardWidget(),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.viewcardModel2,
                                          updateCallback: () => setState(() {}),
                                          child: const ViewcardWidget(),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.viewcardModel3,
                                          updateCallback: () => setState(() {}),
                                          child: const ViewcardWidget(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: 0.2,
                            child: Divider(
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).accent4,
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Sign up',
                              options: FFButtonOptions(
                                width: double.infinity,
                                height: 40.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primaryText,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      fontWeight: FontWeight.w800,
                                    ),
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(0.0),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(5.0, 0.0),
                            child: Text(
                              'Learning that fits',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .headlineLarge
                                  .override(
                                    fontFamily: 'Outfit',
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-6.0, 0.0),
                            child: Text(
                              'learning that fits',
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ),
                        ]
                            .divide(const SizedBox(height: 10.0))
                            .addToStart(const SizedBox(height: 0.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
