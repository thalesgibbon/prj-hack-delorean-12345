import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManuaPartnerWidget extends StatefulWidget {
  const ManuaPartnerWidget({Key? key}) : super(key: key);

  @override
  _ManuaPartnerWidgetState createState() => _ManuaPartnerWidgetState();
}

class _ManuaPartnerWidgetState extends State<ManuaPartnerWidget> {
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/brainstorming.png',
                            width: 200,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                          Divider(
                            color: Colors.transparent,
                          ),
                          Text(
                            'Último ponto, nosso objetivo é conectar pessoas com empresas geradoras de certificados. Todo valor da cota é repassado para o emissor.',
                            textAlign: TextAlign.justify,
                            style: FlutterFlowTheme.of(context).bodyText2,
                          ),
                          Divider(
                            color: Colors.transparent,
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              if (valueOrDefault<bool>(
                                  currentUserDocument?.flagAgree, false)) {
                                context.pushNamed('Home');

                                return;
                              } else {
                                context.pushNamed('Acordo');

                                return;
                              }
                            },
                            text: 'Próximo',
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
              ),
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pushNamed('Home');
                      },
                      child: Text(
                        'Pular',
                        textAlign: TextAlign.end,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).secondaryColor,
                              decoration: TextDecoration.underline,
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
