import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AcordoWidget extends StatefulWidget {
  const AcordoWidget({Key? key}) : super(key: key);

  @override
  _AcordoWidgetState createState() => _AcordoWidgetState();
}

class _AcordoWidgetState extends State<AcordoWidget> {
  bool? checkboxListTileValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(40, 40, 40, 40),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/affection.png',
                          width: 200,
                          height: 200,
                          fit: BoxFit.contain,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Text(
                          'Você aceita se juntar a nós em busca de um mundo mais sustentável?',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context).bodyText2,
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Theme(
                          data: ThemeData(
                            unselectedWidgetColor:
                                FlutterFlowTheme.of(context).secondaryText,
                          ),
                          child: CheckboxListTile(
                            value: checkboxListTileValue ??= false,
                            onChanged: (newValue) => setState(
                                () => checkboxListTileValue = newValue!),
                            title: Text(
                              'Li e concordo com os termos',
                              style: FlutterFlowTheme.of(context).bodyText2,
                            ),
                            tileColor: Color(0x00FFFFFF),
                            activeColor:
                                FlutterFlowTheme.of(context).primaryColor,
                            dense: false,
                            controlAffinity: ListTileControlAffinity.trailing,
                          ),
                        ),
                        if (checkboxListTileValue ?? true)
                          FFButtonWidget(
                            onPressed: () async {
                              final usersUpdateData = createUsersRecordData(
                                flagAgree: true,
                              );
                              await currentUserReference!
                                  .update(usersUpdateData);

                              context.pushNamed('Home');
                            },
                            text: 'ACEITO',
                            options: FFButtonOptions(
                              width: 100,
                              height: 40,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                      ],
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
