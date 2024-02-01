import '/components/internship_widget.dart';
import '/components/jobcardhp_widget.dart';
import '/components/viewcard_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'skillconnecthomepage_model.dart';
export 'skillconnecthomepage_model.dart';

class SkillconnecthomepageWidget extends StatefulWidget {
  const SkillconnecthomepageWidget({super.key});

  @override
  State<SkillconnecthomepageWidget> createState() =>
      _SkillconnecthomepageWidgetState();
}

class _SkillconnecthomepageWidgetState
    extends State<SkillconnecthomepageWidget> {
  late SkillconnecthomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SkillconnecthomepageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(() => setState(() {}));
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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Aizaat',
                style: FlutterFlowTheme.of(context).labelSmall,
              ),
              Text(
                'Good Morning',
                style: FlutterFlowTheme.of(context).headlineMedium,
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
          actions: const [],
          centerTitle: false,
          toolbarHeight: 72.0,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 12.0),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          textCapitalization: TextCapitalization.sentences,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Search...',
                            labelStyle:
                                FlutterFlowTheme.of(context).labelMedium,
                            hintStyle: FlutterFlowTheme.of(context).labelMedium,
                            errorStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).error,
                                  fontSize: 12.0,
                                ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primary,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).error,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            filled: true,
                            fillColor:
                                (_model.textFieldFocusNode?.hasFocus ?? false)
                                    ? FlutterFlowTheme.of(context).accent1
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: (_model.textFieldFocusNode?.hasFocus ??
                                      false)
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context).bodyMedium,
                          cursorColor: FlutterFlowTheme.of(context).primary,
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Courses',
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('Development  '),
                                    ChipData('Business'),
                                    ChipData('Design'),
                                    ChipData('Marketing ')
                                  ],
                                  onChanged: (val) => setState(() =>
                                      _model.choiceChipsValue1 = val?.first),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).accent1,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).primary,
                                    borderWidth: 2.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 1.0,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  chipSpacing: 12.0,
                                  rowSpacing: 12.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController1 ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 8.0))
                                .addToStart(const SizedBox(width: 16.0))
                                .addToEnd(const SizedBox(width: 16.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: const BoxDecoration(),
                          child: ListView(
                            padding: const EdgeInsets.fromLTRB(
                              16.0,
                              0,
                              16.0,
                              0,
                            ),
                            scrollDirection: Axis.horizontal,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 12.0),
                                child: Container(
                                  width: 120.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: wrapWithModel(
                                    model: _model.viewcardModel1,
                                    updateCallback: () => setState(() {}),
                                    child: const ViewcardWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 12.0),
                                child: Container(
                                  width: 120.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: wrapWithModel(
                                    model: _model.viewcardModel2,
                                    updateCallback: () => setState(() {}),
                                    child: const ViewcardWidget(),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 4.0, 0.0, 12.0),
                                child: Container(
                                  width: 120.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: wrapWithModel(
                                    model: _model.viewcardModel3,
                                    updateCallback: () => setState(() {}),
                                    child: const ViewcardWidget(),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 8.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 12.0),
                        child: Container(
                          width: double.infinity,
                          height: 150.0,
                          decoration: BoxDecoration(
                            color: const Color(0xFFA7B3FF),
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 2.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                flex: 7,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Get Everything',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall,
                                      ),
                                      Text(
                                        'From study to Job…',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 18.0,
                                            ),
                                      ),
                                      Text(
                                        'This platform provides you from course to job, so study, learn and earn. Good luck from Skillconnect!',
                                        style: FlutterFlowTheme.of(context)
                                            .labelSmall,
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(6.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(6.0),
                                  ),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1543385426-191664295b58?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw3fHxzb3V0aCUyMGFtZXJpY2F8ZW58MHx8fHwxNzA2NjI1NTY3fDA&ixlib=rb-4.0.3&q=80&w=400',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Internship ',
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 8.0),
                        child: FlutterFlowChoiceChips(
                          options: const [
                            ChipData('Development  '),
                            ChipData('Business'),
                            ChipData('Design'),
                            ChipData('Marketing ')
                          ],
                          onChanged: (val) => setState(
                              () => _model.choiceChipsValue2 = val?.first),
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).accent1,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            iconSize: 18.0,
                            elevation: 0.0,
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderWidth: 2.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            iconSize: 18.0,
                            elevation: 0.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 1.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          chipSpacing: 12.0,
                          rowSpacing: 12.0,
                          multiselect: false,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController2 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: false,
                        ),
                      ),

                      // This list view is "shrink wrapped" this can affect your app performance, we would suggest limiting the number of items you query in this list view.
                      //
                      // The list view is shrink wrapped to prevent the page from having two scrollable elements. The parent column is the element that is scrollable and it provides a smooth user experience.
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: ListView(
                          padding: const EdgeInsets.fromLTRB(
                            0,
                            0,
                            0,
                            10.0,
                          ),
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mumbai, India',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                          ),
                                          Text(
                                            'Web Developer',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 20.0,
                                                ),
                                          ),
                                          Text(
                                            'Tata Consultancy Services',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.internshipModel1,
                                      updateCallback: () => setState(() {}),
                                      child: const InternshipWidget(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 4.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 1.0,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Mumbai, India',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                          ),
                                          Text(
                                            'Web Developer',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  fontSize: 20.0,
                                                ),
                                          ),
                                          Text(
                                            'Tata Consultancy Services',
                                            style: FlutterFlowTheme.of(context)
                                                .labelSmall,
                                          ),
                                        ].divide(const SizedBox(height: 4.0)),
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.internshipModel2,
                                      updateCallback: () => setState(() {}),
                                      child: const InternshipWidget(),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ].divide(const SizedBox(height: 8.0)),
                        ),
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).accent4,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Grab a Job',
                          style: FlutterFlowTheme.of(context).bodyLarge,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 8.0),
                        child: FlutterFlowChoiceChips(
                          options: const [
                            ChipData('Development  '),
                            ChipData('Business'),
                            ChipData('Design'),
                            ChipData('Marketing ')
                          ],
                          onChanged: (val) => setState(
                              () => _model.choiceChipsValue3 = val?.first),
                          selectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).accent1,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            iconColor: FlutterFlowTheme.of(context).primaryText,
                            iconSize: 18.0,
                            elevation: 0.0,
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderWidth: 2.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                ),
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            iconSize: 18.0,
                            elevation: 0.0,
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderWidth: 1.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          chipSpacing: 12.0,
                          rowSpacing: 12.0,
                          multiselect: false,
                          alignment: WrapAlignment.start,
                          controller: _model.choiceChipsValueController3 ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: false,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 8.0, 16.0, 8.0),
                                child: wrapWithModel(
                                  model: _model.jobcardhpModel,
                                  updateCallback: () => setState(() {}),
                                  child: const JobcardhpWidget(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ].addToEnd(const SizedBox(height: 32.0)),
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
