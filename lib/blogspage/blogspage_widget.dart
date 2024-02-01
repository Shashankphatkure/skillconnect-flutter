import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'blogspage_model.dart';
export 'blogspage_model.dart';

class BlogspageWidget extends StatefulWidget {
  const BlogspageWidget({super.key});

  @override
  State<BlogspageWidget> createState() => _BlogspageWidgetState();
}

class _BlogspageWidgetState extends State<BlogspageWidget> {
  late BlogspageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BlogspageModel());

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 230.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.network(
                      'https://images.unsplash.com/photo-1626684496076-07e23c6361ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bW91bnRhaW4lMjBob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                    ).image,
                  ),
                ),
                child: Container(
                  width: 100.0,
                  height: 170.0,
                  decoration: const BoxDecoration(
                    color: Color(0x9A1D2428),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 64.0, 16.0, 12.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: Text(
                            'Blogs',
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Colors.white,
                                ),
                          ),
                        ),
                        Text(
                          'Find some wonderful stories below.',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xBEFFFFFF),
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: SizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              controller: _model.emailAddressController,
                              focusNode: _model.emailAddressFocusNode,
                              autofocus: true,
                              autofillHints: const [AutofillHints.email],
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Search for blogs...',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelLarge,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                filled: true,
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    24.0, 24.0, 0.0, 24.0),
                                prefixIcon: Icon(
                                  Icons.search_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyLarge,
                              maxLines: null,
                              keyboardType: TextInputType.emailAddress,
                              validator: _model.emailAddressControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
                child: Text(
                  'Categories',
                  style: FlutterFlowTheme.of(context).labelLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: FlutterFlowChoiceChips(
                        options: const [
                          ChipData('Development  '),
                          ChipData('Business'),
                          ChipData('Design'),
                          ChipData('Marketing ')
                        ],
                        onChanged: (val) => setState(
                            () => _model.choiceChipsValue = val?.first),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: FlutterFlowTheme.of(context).accent1,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
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
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
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
                        controller: _model.choiceChipsValueController ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 52.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1569228488691-3e94a47d8f5d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxNnx8d29yZHByZXNzfGVufDB8fHx8MTcwNjc4NzE3N3ww&ixlib=rb-4.0.3&q=80&w=1080',
                                    width: double.infinity,
                                    height: 150.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  'Wordpress tips and tricks you need to know ',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 8.0, 0.0),
                                child: AutoSizeText(
                                  'Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 4.0, 8.0),
                                      child: Text(
                                        'Updated: Jan 24',
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 10.0,
                                            ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF57636C),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 8.0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 3.0,
                              color: Color(0x411D2429),
                              offset: Offset(0.0, 1.0),
                            )
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 1.0, 1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(6.0),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1470770841072-f978cf4d019e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bW91bnRhaW4lMjBob3VzZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                    width: double.infinity,
                                    height: 150.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  'Mountain Lake Cabin',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Outfit',
                                        fontSize: 20.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 4.0, 8.0, 0.0),
                                child: AutoSizeText(
                                  'Retreat to the natural beauty of the mountains and immerse yourself in the comfort of our luxurious mountain house, an idyllic escape for your perfect mountain getaway.',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        fontSize: 12.0,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 16.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 4.0, 8.0),
                                      child: Text(
                                        'Updated: Jan 24',
                                        textAlign: TextAlign.end,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontSize: 10.0,
                                            ),
                                      ),
                                    ),
                                    const Icon(
                                      Icons.chevron_right_rounded,
                                      color: Color(0xFF57636C),
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
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
